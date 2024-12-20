BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Books"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Books"
(
	"Id"       Int  NOT NULL,
	"Title"    text NOT NULL,
	"AuthorId" Int  NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Authors"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Authors"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "BooksCte" ("AuthorId", "Title")
AS
(
	SELECT
		t1."AuthorId",
		t1."Title"
	FROM
		"Books" t1
)
SELECT
	b."Title"
FROM
	"BooksCte" b
		INNER JOIN "Authors" "a_Author" ON b."AuthorId" = "a_Author"."Id"
WHERE
	"a_Author"."Name" = 'Steven'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Authors"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Books"

