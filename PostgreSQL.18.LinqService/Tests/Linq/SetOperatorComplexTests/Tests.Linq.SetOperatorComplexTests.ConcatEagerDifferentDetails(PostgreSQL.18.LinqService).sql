﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			t3."Id"
		FROM
			(
				SELECT
					0::Int as projection__set_id__,
					"a_Book"."BookId" as "Id"
				FROM
					"Author" t1
						INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
						LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
				WHERE
					"a_Book"."Discriminator" = 'Roman'
				UNION ALL
				SELECT
					1::Int as projection__set_id__,
					NULL::Int as "Id"
				FROM
					"Author" t2
						INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
						LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
				WHERE
					"a_Book_1"."Discriminator" = 'Novel'
			) t3
		WHERE
			t3.projection__set_id__ = 0
	) m_1
		INNER JOIN "BookAuthor" d ON d."FkBookId" = m_1."Id"
		LEFT JOIN "Author" "a_Author" ON d."FkAuthorId" = "a_Author"."AuthorId"
WHERE
	"a_Author"."AuthorName" <> 'A' OR "a_Author"."AuthorName" IS NULL

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1.c1,
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			t3.c1
		FROM
			(
				SELECT
					0::Int as projection__set_id__,
					NULL::Int as c1
				FROM
					"Author" t1
						INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
						LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
				WHERE
					"a_Book"."Discriminator" = 'Roman'
				UNION ALL
				SELECT
					1::Int as projection__set_id__,
					"a_Book_1"."BookId" as c1
				FROM
					"Author" t2
						INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
						LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
				WHERE
					"a_Book_1"."Discriminator" = 'Novel'
			) t3
		WHERE
			t3.projection__set_id__ = 1
	) m_1
		INNER JOIN "BookAuthor" d ON d."FkBookId" = m_1.c1
		LEFT JOIN "Author" "a_Author" ON d."FkAuthorId" = "a_Author"."AuthorId"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	"a_Book"."BookId",
	"a_Book"."BookName",
	0::Int,
	"a_Book"."BookId",
	NULL::Int
FROM
	"Author" t1
		INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
		LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
WHERE
	"a_Book"."Discriminator" = 'Roman'
UNION ALL
SELECT
	"a_Book_1"."BookId",
	"a_Book_1"."BookName",
	1::Int,
	NULL::Int,
	"a_Book_1"."BookId"
FROM
	"Author" t2
		INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
		LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
WHERE
	"a_Book_1"."Discriminator" = 'Novel'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."BookId",
	m_1."AuthorId",
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			"a_Book"."BookId",
			t2."AuthorId"
		FROM
			(
				SELECT DISTINCT
					t1."AuthorId"
				FROM
					"Author" t1
			) t2
				INNER JOIN "BookAuthor" d ON d."FkAuthorId" = t2."AuthorId"
				LEFT JOIN "Book" "a_Book" ON d."FkBookId" = "a_Book"."BookId"
	) m_1
		INNER JOIN "BookAuthor" d_1 ON d_1."FkBookId" = m_1."BookId"
		LEFT JOIN "Author" "a_Author" ON d_1."FkAuthorId" = "a_Author"."AuthorId"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."AuthorId",
	"a_Book"."BookId",
	"a_Book"."Discriminator",
	"a_Book"."BookName",
	"a_Book"."NovelScore",
	"a_Book"."RomanScore"
FROM
	"Author" m_1
		INNER JOIN "BookAuthor" d ON d."FkAuthorId" = m_1."AuthorId"
		LEFT JOIN "Book" "a_Book" ON d."FkBookId" = "a_Book"."BookId"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."AuthorId",
	t1."AuthorName"
FROM
	"Author" t1

