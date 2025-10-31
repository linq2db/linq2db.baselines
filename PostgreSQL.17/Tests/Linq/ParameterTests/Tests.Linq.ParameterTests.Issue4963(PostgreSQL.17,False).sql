-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table"
SET
	"Field" = ("Issue4963Table"."Field"::Int + :offset)::SmallInt

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Field"
FROM
	"Issue4963Table" t1
LIMIT 2

