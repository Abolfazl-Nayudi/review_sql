const { Router } = require('express');
const reviewControllers = require('../controllers/review.controller');

const router = Router();

router.route('/').get(reviewControllers.getAllReviews);
// router.route('/for-author').get(reviewControllers.getAllBooksByAuthor);
router
  .route('/:id')
  .get(reviewControllers.getReviewById)
  .delete(reviewControllers.deleteReview)
  .patch(reviewControllers.updateReview);

module.exports = router;
