BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Author"
		(
			"AuthorId"   Int          NOT NULL,
			"AuthorName" VarChar(255)     NULL,

			CONSTRAINT "PK_Author" PRIMARY KEY ("AuthorId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Author" ("AuthorId", "AuthorName") VALUES (1,'Stephen King')
	INTO "Author" ("AuthorId", "AuthorName") VALUES (2,'Harry Harrison')
	INTO "Author" ("AuthorId", "AuthorName") VALUES (3,'Roger Joseph Zelazny')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Book"
		(
			"BookId"        Int          NOT NULL,
			"Discriminator" VarChar(255)     NULL,
			"BookName"      VarChar(255)     NULL,
			"RomanScore"    Int              NULL,
			"NovelScore"    Int              NULL,

			CONSTRAINT "PK_Book" PRIMARY KEY ("BookId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (11,'Roman','Lisey''s Story[',4,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (12,'Novel','Duma Key',0,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (13,'Roman','Just After Sunset',3,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (21,'Roman','Deathworld',1,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (22,'Novel','The Stainless Steel Rat',0,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (23,'Roman','Planet of the Damned',0,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (31,'Roman','Blood of Amber',5,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (32,'Novel','Knight of Shadows',0,0)
	INTO "Book" ("BookId", "Discriminator", "BookName", "RomanScore", "NovelScore") VALUES (33,'Roman','The Chronicles of Amber',7,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "BookAuthor"
		(
			"FkBookId"   Int NOT NULL,
			"FkAuthorId" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (11,1)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (12,1)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (13,1)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (21,2)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (22,2)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (23,2)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (31,3)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (32,3)
	INTO "BookAuthor" ("FkBookId", "FkAuthorId") VALUES (33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	a_Book."Discriminator",
	a_Book."BookName",
	a_Book."BookName"
FROM
	"Author" t1
		INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
		LEFT JOIN "Book" a_Book ON b."FkBookId" = a_Book."BookId"
WHERE
	a_Book."Discriminator" = 'Roman'
INTERSECT
SELECT
	a_Book_1."Discriminator",
	a_Book_1."BookName",
	a_Book_1."BookName"
FROM
	"Author" t2
		INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
		LEFT JOIN "Book" a_Book_1 ON b_1."FkBookId" = a_Book_1."BookId"
WHERE
	a_Book_1."Discriminator" = 'Novel'

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."BookId",
	m_1."AuthorId",
	a_Author."AuthorId",
	a_Author."AuthorName"
FROM
	(
		SELECT DISTINCT
			a_Book."BookId",
			t2."AuthorId"
		FROM
			(
				SELECT DISTINCT
					t1."AuthorId"
				FROM
					"Author" t1
			) t2
				INNER JOIN "BookAuthor" d ON d."FkAuthorId" = t2."AuthorId"
				LEFT JOIN "Book" a_Book ON d."FkBookId" = a_Book."BookId"
	) m_1
		INNER JOIN "BookAuthor" d_1 ON d_1."FkBookId" = m_1."BookId"
		LEFT JOIN "Author" a_Author ON d_1."FkAuthorId" = a_Author."AuthorId"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."AuthorId",
	a_Book."BookId",
	a_Book."Discriminator",
	a_Book."BookName",
	a_Book."NovelScore",
	a_Book."RomanScore"
FROM
	"Author" m_1
		INNER JOIN "BookAuthor" d ON d."FkAuthorId" = m_1."AuthorId"
		LEFT JOIN "Book" a_Book ON d."FkBookId" = a_Book."BookId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."AuthorId",
	t1."AuthorName"
FROM
	"Author" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

