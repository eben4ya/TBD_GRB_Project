const db = require("../db/index");

// endpoint to add new book
exports.add_Book = async (req, res) => {
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
exports.get_All_Books = async (req, res) => {
  try {
    const { rows } = await db.query("SELECT * FROM Book");
    res.status(200).json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};
