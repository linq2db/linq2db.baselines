﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  Firebird.5 Firebird4

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
			"a_Book"."Discriminator" = 'Roman' AND NOT EXISTS(
				SELECT
					*
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
--  Firebird.5 Firebird4

SELECT DISTINCT
	"a_Book"."BookId",
	"a_Book"."BookName"
FROM
	"Author" "t1"
		INNER JOIN "BookAuthor" "b" ON "b"."FkAuthorId" = "t1"."AuthorId"
		LEFT JOIN "Book" "a_Book" ON "b"."FkBookId" = "a_Book"."BookId"
WHERE
	"a_Book"."Discriminator" = 'Roman' AND NOT EXISTS(
		SELECT
			*
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
--  Firebird.5 Firebird4

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
--  Firebird.5 Firebird4

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
--  Firebird.5 Firebird4

SELECT
	"t1"."AuthorId",
	"t1"."AuthorName"
FROM
	"Author" "t1"

