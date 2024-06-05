// ! build server and connect routes

const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

// dotenv config
const dotenv = require("dotenv");
dotenv.config({ path: "./config.env" });

app.use(bodyParser.json());
app.use(cors());

// routes 
app.use("/api", require("./routes/routes"));

const PORT = process.env.PORT || 3000;

app.listen(PORT, (err) => {
    if (err) {
        console.log(err);
    }
    console.log(`Server is running on port ${PORT}`);
});

module.exports = app;
