const db = require("../db/index");

// endpoint to add new book
exports.add_Book = async (req, res) => {
  const {
    publisherName,
    city,
    country,
    telephone,
    yearFounded,
    title,
    publicationYear,
    pages,
  } = req.body;
  try {
    // begin transaction
    await db.query("BEGIN");

    // Check if publisher already exists
    let publisherResult = await db.query(
      "SELECT PublisherID FROM Publisher WHERE Name = $1 AND City = $2 AND Country = $3 AND Telephone = $4 AND YearFounded = $5",
      [publisherName, city, country, telephone, yearFounded]
    );

    let publisherID;
    if (publisherResult.rows.length === 0) {
      // Insert new publisher if not exists
      publisherResult = await db.query(
        "INSERT INTO Publisher (Name, City, Country, Telephone, YearFounded) VALUES ($1, $2, $3, $4, $5) RETURNING PublisherID",
        [publisherName, city, country, telephone, yearFounded]
      );
      publisherID = publisherResult.rows[0].publisherid;
    } else {
      // Use existing publisher ID
      publisherID = publisherResult.rows[0].publisherid;
    }

    // Insert into Book
    const bookResult = await db.query(
      "INSERT INTO Book (Title, PublicationYear, Pages, PublisherID) VALUES ($1, $2, $3, $4) RETURNING *",
      [title, publicationYear, pages, publisherID]
    );

    // commit transaction
    await db.query("COMMIT");

    res
      .status(201)
      .json({ publisher: publisherResult.rows[0], book: bookResult.rows[0] });
  } catch (err) {
    // rollback transaction
    await db.query("ROLLBACK");
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to get all books
exports.get_All_Books = async (req, res) => {
  try {
    const { rows } = await db.query("SELECT * FROM Book");
    if (rows.length === 0) {
      return res
        .status(400)
        .json({ warning: "There are no books in the database" });
    }
    res.status(200).json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to get book by id
exports.get_Book_Id = async (req, res) => {
  const { id } = req.params;
  try {
    const { rows } = await db.query("SELECT * FROM Book WHERE BookID = $1", [
      id,
    ]);
    if (rows.length === 0) {
      return res.status(404).json({ error: "Book not found" });
    }
    res.status(200).json(rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to update book by id
exports.update_Book = async (req, res) => {
  const { id } = req.params;
  const {
    title,
    publicationYear,
    pages,
    publisherID,
    publisherName,
    city,
    country,
    telephone,
    yearFounded,
  } = req.body;

  try {
    // transaction begin
    await db.query("BEGIN");

    // check if book exists
    const currentBook = await db.query(
      "SELECT PublisherID FROM Book WHERE BookID = $1",
      [id]
    );

    if (currentBook.rows.length === 0) {
      await db.query("ROLLBACK");
      return res.status(404).json({ error: "Book not found" });
    }

    const currentPublisherID = currentBook.rows[0].publisherid;

    let newPublisherID = publisherID;

    if (currentPublisherID !== publisherID) {
      // If PublisherIDt different from current PublisherID, rollback
      await db.query("ROLLBACK");
      return res
        .status(404)
        .json({ error: "You cannot change the PublisherID" });
    }
    // TODO: Add publisher when currentPublisherID !== publisherID because publisherID not exist
    // TODO: remove publisher when currentPublisherID !== publisherID because publisherID exist
    // Update Publisher
    const publisherUpdateResult = await db.query(
      "UPDATE Publisher SET Name = $1, City = $2, Country = $3, Telephone = $4, YearFounded = $5 WHERE PublisherID = $6 RETURNING *",
      [publisherName, city, country, telephone, yearFounded, currentPublisherID]
    );

    // Update Book
    const bookUpdateResult = await db.query(
      "UPDATE Book SET Title = $1, PublicationYear = $2, Pages = $3, PublisherID = $4 WHERE BookID = $5 RETURNING *",
      [title, publicationYear, pages, newPublisherID, id]
    );

    if (bookUpdateResult.rows.length === 0) {
      await db.query("ROLLBACK");
      return res.status(404).json({ error: "Book not found" });
    }

    // Commit Transaction
    await db.query("COMMIT");
    res.json({
      publisher: publisherUpdateResult.rows[0],
      book: bookUpdateResult.rows[0],
    });
  } catch (err) {
    // Rollback Transaction
    await db.query("ROLLBACK");
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to delete book by id
exports.delete_Book = async (req, res) => {
  const { id } = req.params;
  try {
    const { rows } = await db.query(
      "DELETE FROM Book WHERE BookID = $1 RETURNING *",
      [id]
    );
    if (rows.length === 0) {
      return res.status(404).json({ error: "Book not found" });
    }
    res.json(rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};
