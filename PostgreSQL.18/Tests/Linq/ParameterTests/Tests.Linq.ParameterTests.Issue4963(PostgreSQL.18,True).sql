BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Issue4963Table"
SET
	"Field" = ("Issue4963Table"."Field"::Int + -1)::SmallInt

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Field"
FROM
	"Issue4963Table" t1
LIMIT 2

