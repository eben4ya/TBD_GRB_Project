const express = require("express");
const router = express.Router();
// import controllers for Book
const { add_Book, get_All_Books, get_Book_Id, update_Book, delete_Book } = require("../controllers/cBooks");

// routes for Book
router.post("/addBook", add_Book);
router.get("/getAllBooks", get_All_Books);
router.get("/getBookById/:id", get_Book_Id);
router.put("/updateBookById/:id", update_Book);
router.delete("/deleteBookById/:id", delete_Book);

module.exports = router;
