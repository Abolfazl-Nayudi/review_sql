const Author = require('../model/author.model');

const getAllAuthors = async (req, res) => {
  try {
    const authors = await Author.getAllAuthorsModel();
    res.status(200).json(authors);
  } catch (error) {
    console.log(error);
  }
};

const getAuthorById = async (req, res) => {
  const { id } = req.params;
  try {
    const author = await Author.getAuthorByIdModel(id);
    res.status(200).json(author);
  } catch (error) {
    console.log(error);
  }
};

const createAuthor = async (req, res) => {
  const { author_name, biography } = req.body;

  try {
    const data = Author.createAuthorModel(author_name, biography);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const updateAuthor = async (req, res) => {
  const { id } = req.params;

  try {
    const data = await Author.updateAuthorModel(id, req.body);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const deleteAuthor = async (req, res) => {
  const { id } = req.params;
  try {
    const data = await Author.deleteAuthorModel(id);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  getAllAuthors,
  getAuthorById,
  createAuthor,
  deleteAuthor,
  updateAuthor,
};
