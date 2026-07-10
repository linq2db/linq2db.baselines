-- PostgreSQL.15 PostgreSQL12

UPDATE
	"Issue4963Table"
SET
	"Field" = ("Issue4963Table"."Field"::Int + -1)::SmallInt

-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Field"
FROM
	"Issue4963Table" t1
LIMIT 2

