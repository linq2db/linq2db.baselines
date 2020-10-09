BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Authors
(
	Id   Int           NOT NULL,
	Name VarChar2(100) NOT NULL,

	CONSTRAINT PK_Authors PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Books
(
	Id       Int           NOT NULL,
	AuthorId Int           NOT NULL,
	Title    VarChar2(100) NOT NULL,

	CONSTRAINT PK_Books PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	author.Id, 
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Books

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Authors

