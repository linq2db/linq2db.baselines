﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @AuthorId Int32
SET     @AuthorId = 1
DECLARE @AuthorName Varchar2(12) -- String
SET     @AuthorName = 'Stephen King'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	:AuthorId,
	:AuthorName
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @AuthorId Int32
SET     @AuthorId = 2
DECLARE @AuthorName Varchar2(14) -- String
SET     @AuthorName = 'Harry Harrison'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	:AuthorId,
	:AuthorName
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @AuthorId Int32
SET     @AuthorId = 3
DECLARE @AuthorName Varchar2(20) -- String
SET     @AuthorName = 'Roger Joseph Zelazny'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	:AuthorId,
	:AuthorName
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 11
DECLARE @BookName Varchar2(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 4

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 12
DECLARE @BookName Varchar2(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"NovelScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 13
DECLARE @BookName Varchar2(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 3

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 21
DECLARE @BookName Varchar2(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 1

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 22
DECLARE @BookName Varchar2(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"NovelScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 23
DECLARE @BookName Varchar2(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 0

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 31
DECLARE @BookName Varchar2(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 5

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 32
DECLARE @BookName Varchar2(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Int32
SET     @NovelScore = 0

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"NovelScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @BookId Int32
SET     @BookId = 33
DECLARE @BookName Varchar2(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator Varchar2(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Int32
SET     @RomanScore = 7

INSERT INTO "Book"
(
	"BookId",
	"BookName",
	"Discriminator",
	"RomanScore"
)
VALUES
(
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FkBookId Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	a_Author."AuthorId",
	a_Author."AuthorName"
FROM
	(
		SELECT DISTINCT
			t3."Id"
		FROM
			(
				SELECT
					a_Book."BookId" as "Id"
				FROM
					"Author" t1
						INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
						LEFT JOIN "Book" a_Book ON b."FkBookId" = a_Book."BookId"
				WHERE
					a_Book."Discriminator" = 'Roman'
				UNION ALL
				SELECT
					a_Book_1."BookId" as "Id"
				FROM
					"Author" t2
						INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
						LEFT JOIN "Book" a_Book_1 ON b_1."FkBookId" = a_Book_1."BookId"
				WHERE
					a_Book_1."Discriminator" = 'Novel'
			) t3
	) m_1
		INNER JOIN "BookAuthor" d ON d."FkBookId" = m_1."Id"
		LEFT JOIN "Author" a_Author ON d."FkAuthorId" = a_Author."AuthorId"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	a_Book."BookId",
	a_Book."BookName",
	a_Book."BookId"
FROM
	"Author" t1
		INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
		LEFT JOIN "Book" a_Book ON b."FkBookId" = a_Book."BookId"
WHERE
	a_Book."Discriminator" = 'Roman'
UNION ALL
SELECT
	a_Book_1."BookId",
	a_Book_1."BookName",
	a_Book_1."BookId"
FROM
	"Author" t2
		INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
		LEFT JOIN "Book" a_Book_1 ON b_1."FkBookId" = a_Book_1."BookId"
WHERE
	a_Book_1."Discriminator" = 'Novel'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."AuthorId",
	t1."AuthorName"
FROM
	"Author" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

