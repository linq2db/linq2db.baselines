BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Books"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Books"
(
	"Id"       Int  NOT NULL,
	"Title"    text NOT NULL,
	"AuthorId" Int  NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Title Text(9) -- String
SET     @Title = 'Something'
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 1

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Title Text(4) -- String
SET     @Title = 'Book'
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 2

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Title Text(6) -- String
SET     @Title = 'Boring'
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 3

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Authors"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Authors"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(6) -- String
SET     @Name = 'Steven'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Name Text(5) -- String
SET     @Name = 'Smith'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "BooksCte" ("Book_Id", "Book_Title", "Author_Name")
AS
(
	SELECT
		b."Id",
		b."Title",
		"a_Author"."Name"
	FROM
		"Books" b
			INNER JOIN "Authors" "a_Author" ON b."AuthorId" = "a_Author"."Id"
)
SELECT
	b_1."Id"
FROM
	(
		SELECT
			NULL::text as "Name",
			r."Book_Title" as "Title",
			r."Book_Id" as "Id"
		FROM
			"BooksCte" r
		UNION ALL
		SELECT
			t1."Author_Name" as "Name",
			NULL::text as "Title",
			NULL::Int as "Id"
		FROM
			"BooksCte" t1
	) b_1
WHERE
	b_1."Name" = 'Steven' OR b_1."Title" = 'Something'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Authors"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Books"

