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

    // insert into Publisher
    const publisherResult = await db.query(
      "INSERT INTO Publisher (Name, City, Country, Telephone, YearFounded) VALUES ($1, $2, $3, $4, $5) RETURNING PublisherID ",
      [publisherName, city, country, telephone, yearFounded]
    );

    const publisherID = publisherResult.rows[0].publisherid;

    // insert into Book
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
    res.status(200).json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};
