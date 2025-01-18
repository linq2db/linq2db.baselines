BeforeExecute
-- Firebird.2.5 Firebird

SELECT DISTINCT
	"t1"."cond",
	"t1"."Discriminator",
	"t1"."BookName",
	"t1"."NovelScore",
	"t1"."RomanScore"
FROM
	(
		SELECT
			"a_Book"."BookId" as "cond",
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
			("t1"."cond" = "a_Book_1"."BookId" OR "t1"."cond" IS NULL AND "a_Book_1"."BookId" IS NULL) AND
			("t1"."cond" = "a_Book_1"."BookId" OR "t1"."cond" IS NULL AND "a_Book_1"."BookId" IS NULL) AND
			("t1"."Discriminator" = "a_Book_1"."Discriminator" OR "t1"."Discriminator" IS NULL AND "a_Book_1"."Discriminator" IS NULL) AND
			("t1"."BookName" = "a_Book_1"."BookName" OR "t1"."BookName" IS NULL AND "a_Book_1"."BookName" IS NULL) AND
			("t1"."RomanScore" = "a_Book_1"."RomanScore" OR "t1"."RomanScore" IS NULL AND "a_Book_1"."RomanScore" IS NULL) AND
			("t1"."NovelScore" = "a_Book_1"."NovelScore" OR "t1"."NovelScore" IS NULL AND "a_Book_1"."NovelScore" IS NULL)
	)

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

