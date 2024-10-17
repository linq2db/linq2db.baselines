BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Author"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Author"
(
	"AuthorId"   Int  NOT NULL,
	"AuthorName" text     NULL,

	CONSTRAINT "PK_Author" PRIMARY KEY ("AuthorId")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(1,'Stephen King'),
(2,'Harry Harrison'),
(3,'Roger Joseph Zelazny')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Book"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Book"
(
	"BookId"        Int  NOT NULL,
	"Discriminator" text     NULL,
	"BookName"      text     NULL,
	"RomanScore"    Int      NULL,
	"NovelScore"    Int      NULL,

	CONSTRAINT "PK_Book" PRIMARY KEY ("BookId")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Book"
(
	"BookId",
	"Discriminator",
	"BookName",
	"RomanScore",
	"NovelScore"
)
VALUES
(11,'Roman','Lisey''s Story[',4,0),
(12,'Novel','Duma Key',0,0),
(13,'Roman','Just After Sunset',3,0),
(21,'Roman','Deathworld',1,0),
(22,'Novel','The Stainless Steel Rat',0,0),
(23,'Roman','Planet of the Damned',0,0),
(31,'Roman','Blood of Amber',5,0),
(32,'Novel','Knight of Shadows',0,0),
(33,'Roman','The Chronicles of Amber',7,0)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "BookAuthor"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "BookAuthor"
(
	"FkBookId"   Int NOT NULL,
	"FkAuthorId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(11,1),
(12,1),
(13,1),
(21,2),
(22,2),
(23,2),
(31,3),
(32,3),
(33,3)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t3."BookId",
	CASE
		WHEN t3."Discriminator" = 'Novel' THEN True
		ELSE False
	END,
	t3."BookId_1",
	t3."BookName",
	t3."NovelScore",
	CASE
		WHEN t3."Discriminator" = 'Roman' THEN True
		ELSE False
	END,
	t3."RomanScore",
	t3."Discriminator"
FROM
	(
		SELECT
			"a_Book"."BookId",
			"a_Book"."BookId" as "BookId_1",
			"a_Book"."Discriminator",
			"a_Book"."BookName",
			"a_Book"."RomanScore",
			"a_Book"."NovelScore"
		FROM
			"Author" t1
				INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
				LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
		WHERE
			"a_Book"."Discriminator" = 'Roman'
		UNION
		SELECT
			"a_Book_1"."BookId",
			"a_Book_1"."BookId" as "BookId_1",
			"a_Book_1"."Discriminator",
			"a_Book_1"."BookName",
			"a_Book_1"."RomanScore",
			"a_Book_1"."NovelScore"
		FROM
			"Author" t2
				INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
				LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
		WHERE
			"a_Book_1"."Discriminator" = 'Novel'
	) t3

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."AuthorId",
	"a_Book"."BookId",
	CASE
		WHEN "a_Book"."Discriminator" = 'Novel' THEN True
		ELSE False
	END,
	"a_Book"."BookName",
	"a_Book"."NovelScore",
	CASE
		WHEN "a_Book"."Discriminator" = 'Roman' THEN True
		ELSE False
	END,
	"a_Book"."RomanScore",
	"a_Book"."Discriminator"
FROM
	"Author" m_1
		INNER JOIN "BookAuthor" d ON d."FkAuthorId" = m_1."AuthorId"
		LEFT JOIN "Book" "a_Book" ON d."FkBookId" = "a_Book"."BookId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."AuthorId",
	t1."AuthorName"
FROM
	"Author" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Author"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Book"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "BookAuthor"

