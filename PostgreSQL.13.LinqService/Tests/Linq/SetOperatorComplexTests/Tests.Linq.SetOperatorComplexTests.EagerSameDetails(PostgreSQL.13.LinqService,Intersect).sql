BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Author"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Author"
(
	"AuthorId"   Int  NOT NULL,
	"AuthorName" text     NULL,

	CONSTRAINT "PK_Author" PRIMARY KEY ("AuthorId")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 1
DECLARE @AuthorName Text(12) -- String
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 2
DECLARE @AuthorName Text(14) -- String
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 3
DECLARE @AuthorName Text(20) -- String
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Book"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 11
DECLARE @BookName Text(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 12
DECLARE @BookName Text(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 13
DECLARE @BookName Text(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 21
DECLARE @BookName Text(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 22
DECLARE @BookName Text(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 23
DECLARE @BookName Text(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 31
DECLARE @BookName Text(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 32
DECLARE @BookName Text(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:NovelScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @BookId Integer -- Int32
SET     @BookId = 33
DECLARE @BookName Text(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator Text(5) -- String
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
	:BookId,
	:BookName,
	:Discriminator,
	:RomanScore
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BookAuthor"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "BookAuthor"
(
	"FkBookId"   Int NOT NULL,
	"FkAuthorId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	:FkBookId,
	:FkAuthorId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	"a_Author"."AuthorId",
	"a_Author"."AuthorName"
FROM
	(
		SELECT DISTINCT
			t3."Id_1" as "Id"
		FROM
			(
				SELECT
					"a_Book"."BookId" as "Id",
					"a_Book"."BookName",
					"a_Book"."BookId" as "Id_1"
				FROM
					"Author" t1
						INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
						LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
				WHERE
					"a_Book"."Discriminator" = 'Roman'
				INTERSECT
				SELECT
					"a_Book_1"."BookId" as "Id",
					"a_Book_1"."BookName",
					"a_Book_1"."BookId" as "Id_1"
				FROM
					"Author" t2
						INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
						LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
				WHERE
					"a_Book_1"."Discriminator" = 'Novel'
			) t3
	) m_1
		INNER JOIN "BookAuthor" d ON d."FkBookId" = m_1."Id"
		LEFT JOIN "Author" "a_Author" ON d."FkAuthorId" = "a_Author"."AuthorId"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Book"."BookId",
	"a_Book"."BookName",
	"a_Book"."BookId"
FROM
	"Author" t1
		INNER JOIN "BookAuthor" b ON b."FkAuthorId" = t1."AuthorId"
		LEFT JOIN "Book" "a_Book" ON b."FkBookId" = "a_Book"."BookId"
WHERE
	"a_Book"."Discriminator" = 'Roman'
INTERSECT
SELECT
	"a_Book_1"."BookId",
	"a_Book_1"."BookName",
	"a_Book_1"."BookId"
FROM
	"Author" t2
		INNER JOIN "BookAuthor" b_1 ON b_1."FkAuthorId" = t2."AuthorId"
		LEFT JOIN "Book" "a_Book_1" ON b_1."FkBookId" = "a_Book_1"."BookId"
WHERE
	"a_Book_1"."Discriminator" = 'Novel'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."AuthorId",
	t1."AuthorName"
FROM
	"Author" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Author"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Book"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BookAuthor"

