const db = require('../db/connect');

const getAllBooksModel = async () => {
  const query = 'select * from books';
  const [data] = await db.query(query);
  return data;
};

const getAllBooksByAuthorModel = async (authorName) => {
  console.log(authorName);
  const query = `
        select * from books
        join authors using(author_id)
        where author_name = ?
    `;

  const [posts] = await db.query(query, [authorName]);
  console.log(posts);
  return posts;
};

const getSingleBookModel = async (id) => {
  const query = `select * from books where book_id = ?`;
  const [[data]] = await db.query(query, id);
  return data;
};

const deleteBookModel = async (id) => {
  if (!id) return 'id is required';
  const query = 'delete from books where book_id = ?';
  const data = await db.query(query, id);
  console.log(data);
  return { affectedRows: data[0].affectedRows };
};

const updateBookModel = async (id, { title, price = null }) => {
  if (!id) return 'id is required';
  const query = 'update books set title = ?, price = ? where book_id = ?';
  const [data] = await db.query(query, [title, price, id]);
  console.log(data);
  return { affectedRows: data.affectedRows };
};

module.exports = {
  getAllBooksModel,
  getAllBooksByAuthorModel,
  getSingleBookModel,
  deleteBookModel,
  updateBookModel,
};
