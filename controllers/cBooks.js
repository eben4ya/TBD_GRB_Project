const fs = require('fs');
const path = require("path");
const db = require("../db/index");

const isEmptyOrSpaces = (str) => {
  return str === null || str.match(/^ *$/) !== null;
};

// Function to write execution time to CSV file
const writeExecutionTimeToCSV = (endpoint, time) => {
  const logDir = path.join(__dirname, "executionTime");
  const logFile = path.join(logDir, "delete_Book.csv"); // ! change this line to write to different file

  // Cek apakah direktori sudah ada, jika tidak buat direktori
  if (!fs.existsSync(logDir)) {
    fs.mkdirSync(logDir);
  }
  const logLine = `${new Date().toISOString()},${endpoint},${time}\n`;
  fs.appendFile(logFile, logLine, (err) => {
    if (err) {
      console.error("Error writing to CSV file", err);
    }
  });
};

// endpoint to add new book
exports.add_Book = async (req, res) => {
  console.time("add_Book");
  const start = process.hrtime();

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

  // validate input
  if (
    isEmptyOrSpaces(publisherName) ||
    isEmptyOrSpaces(city) ||
    isEmptyOrSpaces(country) ||
    isEmptyOrSpaces(telephone) ||
    isEmptyOrSpaces(title) ||
    !publicationYear ||
    !pages ||
    !yearFounded
  ) {
    console.timeEnd("add_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('add_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    return res.status(400).json({
      error: "All fields are required and cannot be empty or just spaces.",
    });
  }

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

    console.timeEnd("add_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('add_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds

    res
      .status(201)
      .json({ publisher: publisherResult.rows[0], book: bookResult.rows[0] });
  } catch (err) {
    // rollback transaction
    await db.query("ROLLBACK");
    console.timeEnd("add_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('add_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to get all books
exports.get_All_Books = async (req, res) => {
  console.time("get_All_Books");
  const start = process.hrtime();

  try {
    const { rows } = await db.query("SELECT * FROM Book");
    if (rows.length === 0) {
      console.timeEnd("get_All_Books");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('get_All_Books', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
      return res
        .status(400)
        .json({ warning: "There are no books in the database" });
    }
    console.timeEnd("get_All_Books");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('get_All_Books', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    res.status(200).json(rows);
  } catch (err) {
    console.timeEnd("get_All_Books");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('get_All_Books', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to get book by id
exports.get_Book_Id = async (req, res) => {
  console.time("get_Book_Id");
  const start = process.hrtime();

  const { id } = req.params;
  try {
    const { rows } = await db.query("SELECT * FROM Book WHERE BookID = $1", [
      id,
    ]);
    if (rows.length === 0) {
      console.timeEnd("get_Book_Id");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('get_Book_Id', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
      return res.status(404).json({ error: "Book not found" });
    }
    console.timeEnd("get_Book_Id");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('get_Book_Id', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    res.status(200).json(rows[0]);
  } catch (err) {
    console.timeEnd("get_Book_Id");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('get_Book_Id', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to update book by id
exports.update_Book = async (req, res) => {
  console.time("update_Book");
  const start = process.hrtime();

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

  // validate input
  if (
    isEmptyOrSpaces(publisherName) ||
    isEmptyOrSpaces(city) ||
    isEmptyOrSpaces(country) ||
    isEmptyOrSpaces(telephone) ||
    isEmptyOrSpaces(title) ||
    !publicationYear ||
    !pages ||
    !yearFounded
  ) {
    console.timeEnd("update_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    return res.status(400).json({
      error: "All fields are required and cannot be empty or just spaces.",
    });
  }

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
      console.timeEnd("update_Book");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
      return res.status(404).json({ error: "Book not found" });
    }

    const currentPublisherID = currentBook.rows[0].publisherid;

    let newPublisherID = publisherID;

    if (currentPublisherID !== publisherID) {
      // If PublisherIDt different from current PublisherID, rollback
      await db.query("ROLLBACK");
      console.timeEnd("update_Book");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
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
      console.timeEnd("update_Book");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
      return res.status(404).json({ error: "Book not found" });
    }

    // Commit Transaction
    await db.query("COMMIT");
    console.timeEnd("update_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    res.json({
      publisher: publisherUpdateResult.rows[0],
      book: bookUpdateResult.rows[0],
    });
  } catch (err) {
    // Rollback Transaction
    await db.query("ROLLBACK");
    console.timeEnd("update_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('update_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// endpoint to delete book by id
exports.delete_Book = async (req, res) => {
  console.time("delete_Book");
  const start = process.hrtime();

  const { id } = req.params;
  try {
    const { rows } = await db.query(
      "DELETE FROM Book WHERE BookID = $1 RETURNING *",
      [id]
    );
    if (rows.length === 0) {
      console.timeEnd("delete_Book");
      const elapsed = process.hrtime(start);
      writeExecutionTimeToCSV('delete_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
      return res.status(404).json({ error: "Book not found" });
    }
    console.timeEnd("delete_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('delete_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    res.json(rows[0]);
  } catch (err) {
    console.timeEnd("delete_Book");
    const elapsed = process.hrtime(start);
    writeExecutionTimeToCSV('delete_Book', (elapsed[0] * 1e9 + elapsed[1]) / 1e6); // Convert to milliseconds
    console.error(err);
    res.status(500).json({ error: "Internal Server Error" });
  }
};
