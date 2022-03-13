BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue3323Table"
(
	"Id"       Int  NOT NULL,
	"FistName" text     NULL,
	"LastName" text     NULL,
	"Text"     text NOT NULL,

	CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."Id",
	t1."Text",
	t1."FistName" || ' ' || t1."LastName"
FROM
	"Issue3323Table" t1
UNION ALL
SELECT
	t2."Id",
	t2."Text",
	t2."FistName" || ' ' || t2."LastName"
FROM
	"Issue3323Table" t2

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Issue3323Table"

