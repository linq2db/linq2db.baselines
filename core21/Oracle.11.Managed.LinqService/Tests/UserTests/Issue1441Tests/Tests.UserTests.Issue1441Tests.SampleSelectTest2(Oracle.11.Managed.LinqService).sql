BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Authors
(
	Id   Int           NOT NULL,
	Name VarChar2(100) NOT NULL,

	CONSTRAINT PK_Authors PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Books
(
	Id       Int           NOT NULL,
	AuthorId Int           NOT NULL,
	Title    VarChar2(100) NOT NULL,

	CONSTRAINT PK_Books PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	author.Id,
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Books

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Authors

