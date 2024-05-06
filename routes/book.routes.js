const { Router } = require('express');
const BookControllers = require('../controllers/books.controllers');

const router = Router();

router.route('/').get(BookControllers.getAllBooks);
router.route('/for-author').get(BookControllers.getAllBooksByAuthor);
router
  .route('/:id')
  .get(BookControllers.getSignleBook)
  .delete(BookControllers.deleteBook)
  .patch(BookControllers.updateBook);

module.exports = router;
