BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2434Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2434Table"
(
	"Id"        Int  NOT NULL,
	"FirstName" text     NULL,
	"LastName"  text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName",
	t1."FirstName" || ' ' || t1."LastName"
FROM
	"Issue2434Table" t1
ORDER BY
	t1."FirstName" || ' ' || t1."LastName"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2434Table"

