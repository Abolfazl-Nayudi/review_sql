const Book = require('../model/book.model');

const getAllBooks = async (req, res) => {
  try {
    const data = await Book.getAllBooksModel();
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const getAllBooksByAuthor = async (req, res) => {
  const { author_name } = req.query;
  try {
    const data = await Book.getAllBooksByAuthorModel(author_name);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const getSignleBook = async (req, res) => {
  const { id } = req.params;
  try {
    const data = await Book.getSingleBookModel(id);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const deleteBook = async (req, res) => {
  const { id } = req.params;
  try {
    if (!id) {
      res.status(404).json({ success: false, msg: 'id is required', data: '' });
      return;
    }

    const data = await Book.deleteBookModel(id);
    res
      .status(200)
      .json({ success: true, msg: 'book deleted successfully', data });
  } catch (error) {
    console.log(error);
  }
};

const updateBook = async (req, res) => {
  const { id } = req.params;

  try {
    if (!id) {
      res.status(404).json({ success: false, msg: 'id is required', data: '' });
      return;
    }
    const data = await Book.updateBookModel(id, req.body);
    res
      .status(200)
      .json({ success: true, msg: 'book edited successfully', data });
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  getAllBooks,
  getAllBooksByAuthor,
  getSignleBook,
  deleteBook,
  updateBook,
};
