const Review = require('../model/review.model');

const getAllReviews = async (req, res) => {
  try {
    const reviews = await Review.getAllReviewsModel();
    res.status(200).json(reviews);
  } catch (error) {
    console.log(error);
  }
};

const getReviewById = async (req, res) => {
  const { id } = req.params;
  try {
    const review = await Review.getSingleReviewModel(id);
    res.status(200).json(review);
  } catch (error) {
    console.log(error);
  }
};

const createReview = async (req, res) => {
  try {
    const data = Review.createReview(req.body);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const updateReview = async (req, res) => {
  const { id } = req.params;

  try {
    const data = await Review.updateReviewModel(id, req.body);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

const deleteReview = async (req, res) => {
  const { id } = req.params;
  try {
    const data = Review.deleteReviewModel(id);
    res.status(200).json(data);
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  getAllReviews,
  getReviewById,
  createReview,
  deleteReview,
  updateReview,
};
