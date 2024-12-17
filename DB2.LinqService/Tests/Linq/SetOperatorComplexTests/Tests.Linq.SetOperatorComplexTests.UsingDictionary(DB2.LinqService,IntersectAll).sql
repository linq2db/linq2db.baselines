BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Author"
		(
			"AuthorId"   Int           NOT NULL,
			"AuthorName" NVarChar(255)     NULL,

			CONSTRAINT "PK_Author" PRIMARY KEY ("AuthorId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @AuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @AuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @AuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Book"
		(
			"BookId"        Int           NOT NULL,
			"Discriminator" NVarChar(255)     NULL,
			"BookName"      NVarChar(255)     NULL,
			"RomanScore"    Int               NULL,
			"NovelScore"    Int               NULL,

			CONSTRAINT "PK_Book" PRIMARY KEY ("BookId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 11
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 12
DECLARE @BookName VarChar(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 13
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 21
DECLARE @BookName VarChar(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 22
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 23
DECLARE @BookName VarChar(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 31
DECLARE @BookName VarChar(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 32
DECLARE @BookName VarChar(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @BookId Integer(4) -- Int32
SET     @BookId = 33
DECLARE @BookName VarChar(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator VarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "BookAuthor"
		(
			"FkBookId"   Int NOT NULL,
			"FkAuthorId" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @FkBookId Integer(4) -- Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Book"."Discriminator",
	"a_Book"."BookName"
FROM
	"Author" "t1"
		INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "t1"."AuthorId"
		LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
WHERE
	"a_Book"."Discriminator" = 'Roman' AND  EXISTS (
		SELECT
			*
		FROM
			"Author" "t2"
				INNER JOIN "BookAuthor" "b_1" ON "b_1"."FkAuthorId" = "t2"."AuthorId"
				LEFT JOIN "Book" "a_Book_1" ON "b_1"."FkBookId" = "a_Book_1"."BookId"
		WHERE
			"a_Book_1"."Discriminator" = 'Novel' AND
			("a_Book"."Discriminator" = "a_Book_1"."Discriminator" OR "a_Book"."Discriminator" IS NULL AND "a_Book_1"."Discriminator" IS NULL) AND
			("a_Book"."BookName" = "a_Book_1"."BookName" OR "a_Book"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL) AND
			("a_Book"."BookName" = "a_Book_1"."BookName" OR "a_Book"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Author"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Book"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BookAuthor"';
END

