const db = require('../db/connect');

const getAllAuthorsModel = async () => {
  const query = 'select * from authors';
  const [data] = await db.query(query);
  return data;
};

const getAuthorByIdModel = async (id) => {
  const query = 'select * from authors where author_id = ?';
  const [data] = await db.query(query, id);
  return data[0];
};

const createAuthorModel = async (author_name, biography = null) => {
  console.log(author_name, biography);
  const query = 'insert into authors(author_name, biography) values(?,?) ';
  const data = await db.query(query, [author_name, biography]);
  console.log(data);
  return data;
};

const updateAuthorModel = async (id, { author_name, biography = null }) => {
  const query =
    'update authors set author_name = ?, biography = ? where author_id = ?';
  const res = await db.query(query, [author_name, biography, id]);
  return res;
};

const deleteAuthorModel = async (id) => {
  console.log(id);
  const query = 'delete from authors where author_id = ?';
  const data = await db.query(query, id);
  console.log(data);
  return data;
};

module.exports = {
  getAllAuthorsModel,
  getAuthorByIdModel,
  createAuthorModel,
  deleteAuthorModel,
  updateAuthorModel,
};
