BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 1
DECLARE @AuthorName VarChar(12) -- String
SET     @AuthorName = 'Stephen King'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 2
DECLARE @AuthorName VarChar(14) -- String
SET     @AuthorName = 'Harry Harrison'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 3
DECLARE @AuthorName VarChar(20) -- String
SET     @AuthorName = 'Roger Joseph Zelazny'

INSERT INTO "Author"
(
	"AuthorId",
	"AuthorName"
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 11
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 12
DECLARE @BookName VarChar(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 13
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 21
DECLARE @BookName VarChar(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 22
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 23
DECLARE @BookName VarChar(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 31
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 32
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @BookId Integer -- Int32
SET     @BookId = 33
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
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
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO "BookAuthor"
(
	"FkBookId",
	"FkAuthorId"
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t3"."BookId",
	CASE
		WHEN "t3"."Discriminator" = 'Novel' THEN '1'
		ELSE '0'
	END,
	"t3"."BookId_1",
	"t3"."BookName",
	"t3"."NovelScore",
	CASE
		WHEN "t3"."Discriminator" = 'Roman' THEN '1'
		ELSE '0'
	END,
	"t3"."RomanScore",
	"t3"."Discriminator"
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
			"Author" "t1"
				INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "t1"."AuthorId"
				LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
		WHERE
			"a_Book"."Discriminator" = 'Novel'
		UNION
		SELECT
			"a_Book_1"."BookId",
			"a_Book_1"."BookId" as "BookId_1",
			"a_Book_1"."Discriminator",
			"a_Book_1"."BookName",
			"a_Book_1"."RomanScore",
			"a_Book_1"."NovelScore"
		FROM
			"Author" "t2"
				INNER JOIN "BookAuthor" "b_1" ON "b_1"."FkAuthorId" = "t2"."AuthorId"
				LEFT JOIN "Book" "a_Book_1" ON "b_1"."FkBookId" = "a_Book_1"."BookId"
		WHERE
			"a_Book_1"."Discriminator" = 'Roman'
	) "t3"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."AuthorId",
	"a_Book"."BookId",
	CASE
		WHEN "a_Book"."Discriminator" = 'Novel' THEN '1'
		ELSE '0'
	END,
	"a_Book"."BookName",
	"a_Book"."NovelScore",
	CASE
		WHEN "a_Book"."Discriminator" = 'Roman' THEN '1'
		ELSE '0'
	END,
	"a_Book"."RomanScore",
	"a_Book"."Discriminator"
FROM
	"Author" "m_1"
		INNER JOIN "BookAuthor" "d" ON "d"."FkAuthorId" = "m_1"."AuthorId"
		LEFT JOIN "Book" "a_Book" ON "d"."FkBookId" = "a_Book"."BookId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Author')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Author"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Book')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Book"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BookAuthor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BookAuthor"';
END

