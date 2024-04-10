﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
SELECT 1,CAST('Stephen King' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Harry Harrison' FROM rdb$database UNION ALL
SELECT 3,'Roger Joseph Zelazny' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

SELECT DISTINCT
	"t1"."BookId",
	"t1"."BookId",
	"t1"."Discriminator",
	"t1"."BookName",
	"t1"."RomanScore",
	"t1"."NovelScore",
	"t1"."BookId",
	"t1"."Discriminator",
	"t1"."BookName",
	"t1"."NovelScore",
	"t1"."RomanScore"
FROM
	(
		SELECT
			"a_Book"."BookId",
			"a_Book"."Discriminator",
			"a_Book"."BookName",
			"a_Book"."RomanScore",
			"a_Book"."NovelScore"
		FROM
			"Author" "a"
				INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "a"."AuthorId"
				LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
		WHERE
			"a_Book"."Discriminator" = 'Roman'
	) "t1"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Author" "t2"
				INNER JOIN "BookAuthor" "b_1" ON "b_1"."FkAuthorId" = "t2"."AuthorId"
				LEFT JOIN "Book" "a_Book_1" ON "b_1"."FkBookId" = "a_Book_1"."BookId"
		WHERE
			"a_Book_1"."Discriminator" = 'Novel' AND
			("t1"."BookId" = "a_Book_1"."BookId" OR "t1"."BookId" IS NULL AND "a_Book_1"."BookId" IS NULL) AND
			"t1"."BookId" = "a_Book_1"."BookId" AND
			("t1"."Discriminator" = "a_Book_1"."Discriminator" OR "t1"."Discriminator" IS NULL AND "a_Book_1"."Discriminator" IS NULL) AND
			("t1"."BookName" = "a_Book_1"."BookName" OR "t1"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL) AND
			("t1"."RomanScore" = "a_Book_1"."RomanScore" OR "t1"."RomanScore" IS NULL AND "a_Book_1"."RomanScore" IS NULL) AND
			("t1"."NovelScore" = "a_Book_1"."NovelScore" OR "t1"."NovelScore" IS NULL AND "a_Book_1"."NovelScore" IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

