BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Books
(
	Id       Int           NOT NULL,
	Title    NVarChar(255) NOT NULL,
	AuthorId Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Title VarChar(9) -- String
SET     @Title = 'Something'
DECLARE @AuthorId Integer(4) -- Int32
SET     @AuthorId = 1

INSERT INTO Books
(
	Id,
	Title,
	AuthorId
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Title VarChar(4) -- String
SET     @Title = 'Book'
DECLARE @AuthorId Integer(4) -- Int32
SET     @AuthorId = 2

INSERT INTO Books
(
	Id,
	Title,
	AuthorId
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Title VarChar(6) -- String
SET     @Title = 'Boring'
DECLARE @AuthorId Integer(4) -- Int32
SET     @AuthorId = 3

INSERT INTO Books
(
	Id,
	Title,
	AuthorId
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO Authors
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Steven'

INSERT INTO Authors
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO Authors
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix

WITH BooksCte (Book_Id, Book_Title, Author_Name)
AS
(
	SELECT
		b.Id,
		b.Title,
		a_Author.Name
	FROM
		Books b
			INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
)
SELECT
	b_1.Id
FROM
	(
		SELECT
			NULL::NVarChar(255) as Name,
			NVL(r.Book_Title, NULL) as Title,
			NVL(r.Book_Id, NULL) as Id
		FROM
			BooksCte r
		UNION ALL
		SELECT
			t1.Author_Name as Name,
			NULL::NVarChar(255) as Title,
			NULL::Int as Id
		FROM
			BooksCte t1
	) b_1
WHERE
	b_1.Name = 'Steven' OR b_1.Title = 'Something'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

