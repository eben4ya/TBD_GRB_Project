const db = require("../db/index");

// endpoint to add new book
exports.addBook = async (req, res) => {
  const { title, publicationYear, pages, publisherID } = req.body;
  try {
    const { rows } = await db.query(
      "INSERT INTO Book (Title, PublicationYear, Pages, PublisherID) VALUES ($1, $2, $3, $4) RETURNING *",
      [title, publicationYear, pages, publisherID]
    );
    res.status(201).json(rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to get all books
