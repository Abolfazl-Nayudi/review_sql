const { Router } = require('express');
const db = require('../db/connect');

const authorControllers = require('../controllers/authors.controllers');

const router = Router();

router
  .route('/')
  .get(authorControllers.getAllAuthors)
  .post(authorControllers.createAuthor);
router
  .route('/:id')
  .get(authorControllers.getAuthorById)
  .delete(authorControllers.deleteAuthor)
  .patch(authorControllers.updateAuthor);
module.exports = router;
