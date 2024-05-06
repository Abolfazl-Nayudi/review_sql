require('dotenv').config();
const express = require('express');
const db = require('./db/connect');
const authorRouter = require('./routes/author.routes');
const bookRouter = require('./routes/book.routes');
const reviewRouter = require('./routes/review.routes');
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/authors', authorRouter);
app.use('/books', bookRouter);
app.use('/reviews', reviewRouter);
app.get('/', (req, res) => {
  res.send('home page');
});

const PORT = process.env.PORT || 4000;
const start = async () => {
  await db.getConnection();
  app.listen(PORT, () => console.log(`server is running on port ${PORT}`));
};

start();
