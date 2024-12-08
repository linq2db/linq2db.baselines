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

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(1,'Something',1),
(2,'Book',2),
(3,'Boring',3)

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

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(1,'John'),
(2,'Steven'),
(3,'Smith')

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

