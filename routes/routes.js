const express = require("express");
const router = express.Router();
// import controllers for Book
const { add_Book, get_All_Books } = require("../controllers/cBooks");

// routes for Book
router.post("/addBook", add_Book);
router.get("/getAllBooks", get_All_Books);

module.exports = router;
