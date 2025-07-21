// 📁 Database & Collection setup
show databases

use bookstore

db.createCollection("books")


// 📝 Insert operations
db.books.insertOne({ title: "1984", authors: ["George Orwell"], genres: ["Dystopian", "Science Fiction"], publishedYear: 1949 })

db.books.insertMany([
  { title: "Animal Farm", authors: ["George Orwell"], genres: ["Allegory", "Fiction"], publishedYear: 1945 },
  { title: "The Lord of the Rings", authors: ["J.R.R. Tolkien"], genres: ["Fantasy", "Adventure"], publishedYear: 1954 }
 
db.books.InsertOne({title: "The Great Gatsby", authors:[ "F. Scott Fitzgerald"], genre: ["Classic", "Tragedy"], publishedYear: 1925, 
  reviews:[{name: "Oliver", body: "It is a great book!"}, {name: "Olivia", body: "Not my cup of tea"} ]})

// 🔍 Find & projection
db.books.find()
db.books.find({ authors: "George Orwell" })
db.books.find({ authors: "George Orwell", genres: "Fiction"})
db.books.find({ authors: "George Orwell"}, { title: 1, authors:1 })
db.books.find({}, {_id:0, title: 1, authors:1 })
db.books.findOne({ authors:"George Orwell" })

// 🔢 Count, sort, limit
db.books.find().count()
db.books.find({authors:"George Orwell"}).count()
db.books.find().limit(1)
db.books.find().sort({ title: -1, genre: 1 })

// 🔎 Query operators
db.books.find({ publishedYear: { $gte: 1949 } })
db.books.find({ publishedYear: { $lt: 1945 } })
db.books.find({ $or: [ { publishedYear: 1945 }, { genres: "Adventure" } ] })
db.books.find({ $and: [ { publishedYear: { $gt: 1945 } },  {authors: "George Orwell" } ] })
db.books.find({ publishedYear: { $in: [1945, 1946, 1947, 1948, 1949] } })
db.books.find({ authors: { $nin: ["George Orwell", "F. Scott Fitzgerald"] } })
db.books.find({ "reviews.name": "Oliver" })

// ✏️ Update & 🗑️ Delete
db.books.updateOne({ _id: ObjectId('68790d5c4ab2a870f3d0dbed') }, { $set: { title:"The Great Gatsby."} })
db.books.deleteOne({ _id: ObjectID('687810ee4ab2a870f3d0dbeb') })
db.books.deleteMany({ authors: "George Orwell" })
