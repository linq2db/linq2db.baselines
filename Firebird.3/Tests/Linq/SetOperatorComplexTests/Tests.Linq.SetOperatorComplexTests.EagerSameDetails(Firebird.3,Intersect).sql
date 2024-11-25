BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Author"
			(
				"AuthorId"   Int                                    NOT NULL,
				"AuthorName" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Author" PRIMARY KEY ("AuthorId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
SELECT 1,CAST('Stephen King' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Harry Harrison' FROM rdb$database UNION ALL
SELECT 3,'Roger Joseph Zelazny' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Book"
			(
				"BookId"        Int                                    NOT NULL,
				"Discriminator" VarChar(255) CHARACTER SET UNICODE_FSS,
				"BookName"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"RomanScore"    Int,
				"NovelScore"    Int,

				CONSTRAINT "PK_Book" PRIMARY KEY ("BookId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Book"
(
	"BookId",
	"Discriminator",
	"BookName",
	"RomanScore",
	"NovelScore"
)
SELECT 11,CAST('Roman' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Lisey''s Story[' AS VarChar(255) CHARACTER SET UNICODE_FSS),4,0 FROM rdb$database UNION ALL
SELECT 12,'Novel','Duma Key',0,0 FROM rdb$database UNION ALL
SELECT 13,'Roman','Just After Sunset',3,0 FROM rdb$database UNION ALL
SELECT 21,'Roman','Deathworld',1,0 FROM rdb$database UNION ALL
SELECT 22,'Novel','The Stainless Steel Rat',0,0 FROM rdb$database UNION ALL
SELECT 23,'Roman','Planet of the Damned',0,0 FROM rdb$database UNION ALL
SELECT 31,'Roman','Blood of Amber',5,0 FROM rdb$database UNION ALL
SELECT 32,'Novel','Knight of Shadows',0,0 FROM rdb$database UNION ALL
SELECT 33,'Roman','The Chronicles of Amber',7,0 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BookAuthor"
			(
				"FkBookId"   Int NOT NULL,
				"FkAuthorId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
SELECT 11,1 FROM rdb$database UNION ALL
SELECT 12,1 FROM rdb$database UNION ALL
SELECT 13,1 FROM rdb$database UNION ALL
SELECT 21,2 FROM rdb$database UNION ALL
SELECT 22,2 FROM rdb$database UNION ALL
SELECT 23,2 FROM rdb$database UNION ALL
SELECT 31,3 FROM rdb$database UNION ALL
SELECT 32,3 FROM rdb$database UNION ALL
SELECT 33,3 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."BookId",
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			"a_Book"."BookId"
		FROM
			"Author" "t1"
				INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "t1"."AuthorId"
				LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
		WHERE
			"a_Book"."Discriminator" = 'Roman' AND EXISTS(
				SELECT
					1
				FROM
					"Author" "t2"
						INNER JOIN "BookAuthor" "b_1" ON "b_1"."FkAuthorId" = "t2"."AuthorId"
						LEFT JOIN "Book" "a_Book_1" ON "b_1"."FkBookId" = "a_Book_1"."BookId"
				WHERE
					"a_Book_1"."Discriminator" = 'Novel' AND
					"a_Book"."BookId" = "a_Book_1"."BookId" AND
					("a_Book"."BookName" = "a_Book_1"."BookName" OR "a_Book"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL) AND
					"a_Book"."BookId" = "a_Book_1"."BookId"
			)
	) "m_1"
		INNER JOIN "BookAuthor" "d" ON "d"."FkBookId" = "m_1"."BookId"
		LEFT JOIN "Author" "a_Author" ON "d"."FkAuthorId" = "a_Author"."AuthorId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT DISTINCT
	"a_Book"."BookId",
	"a_Book"."BookName"
FROM
	"Author" "t1"
		INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "t1"."AuthorId"
		LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
WHERE
	"a_Book"."Discriminator" = 'Roman' AND EXISTS(
		SELECT
			1
		FROM
			"Author" "t2"
				INNER JOIN "BookAuthor" "b_1" ON "b_1"."FkAuthorId" = "t2"."AuthorId"
				LEFT JOIN "Book" "a_Book_1" ON "b_1"."FkBookId" = "a_Book_1"."BookId"
		WHERE
			"a_Book_1"."Discriminator" = 'Novel' AND
			"a_Book"."BookId" = "a_Book_1"."BookId" AND
			("a_Book"."BookName" = "a_Book_1"."BookName" OR "a_Book"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL) AND
			"a_Book"."BookId" = "a_Book_1"."BookId"
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."BookId",
	"m_1"."AuthorId",
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			"a_Book"."BookId",
			"t2"."AuthorId"
		FROM
			(
				SELECT DISTINCT
					"t1"."AuthorId"
				FROM
					"Author" "t1"
			) "t2"
				INNER JOIN "BookAuthor" "d" ON "d"."FkAuthorId" = "t2"."AuthorId"
				LEFT JOIN "Book" "a_Book" ON "d"."FkBookId" = "a_Book"."BookId"
	) "m_1"
		INNER JOIN "BookAuthor" "d_1" ON "d_1"."FkBookId" = "m_1"."BookId"
		LEFT JOIN "Author" "a_Author" ON "d_1"."FkAuthorId" = "a_Author"."AuthorId"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."AuthorId",
	"a_Book"."BookId",
	"a_Book"."Discriminator",
	"a_Book"."BookName",
	"a_Book"."NovelScore",
	"a_Book"."RomanScore"
FROM
	"Author" "m_1"
		INNER JOIN "BookAuthor" "d" ON "d"."FkAuthorId" = "m_1"."AuthorId"
		LEFT JOIN "Book" "a_Book" ON "d"."FkBookId" = "a_Book"."BookId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

