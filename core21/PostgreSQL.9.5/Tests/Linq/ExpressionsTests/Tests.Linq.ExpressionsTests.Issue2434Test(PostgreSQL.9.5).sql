BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue2434Table"
(
	"Id"        Int  NOT NULL,
	"FirstName" text     NULL,
	"LastName"  text     NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue2434Table"

