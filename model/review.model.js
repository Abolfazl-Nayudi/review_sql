const db = require('../db/connect');

const getAllReviewsModel = async () => {
  const query = 'select * from reviews';
  const [data] = await db.query(query);
  return data;
};

// const getAllBooksByAuthorModel = async (authorName) => {
//   console.log(authorName);
//   const query = `
//         select * from books
//         join authors using(author_id)
//         where author_name = ?
//     `;

//   const [posts] = await db.query(query, [authorName]);
//   console.log(posts);
//   return posts;
// };

const createReview = async ({ reviewer_name, review }) => {
  const query = 'insert into reviews(reviewer_name, review) values(?, ?)';
  const data = await db.query(query, [reviewer_name, review]);
  console.log(data);
  return data;
};

const getSingleReviewModel = async (id) => {
  const query = `select * from reviews where review_id = ?`;
  const [[data]] = await db.query(query, id);
  return data;
};

const deleteReviewModel = async (id) => {
  if (!id) return 'id is required';
  const query = 'delete from reviews where review_id = ?';
  const data = await db.query(query, id);
  console.log(data);
  return { affectedRows: data[0].affectedRows };
};

const updateReviewModel = async (id, { reviewer_name, review = null }) => {
  if (!id) return 'id is required';
  const query =
    'update reviews set reviewer_name = ?, review = ? where review_id = ?';
  const [data] = await db.query(query, [reviewer_name, review, id]);
  console.log(data);
  return { affectedRows: data.affectedRows };
};

module.exports = {
  getAllReviewsModel,
  createReview,
  //   getAllBooksByAuthorModel,
  getSingleReviewModel,
  deleteReviewModel,
  updateReviewModel,
};
