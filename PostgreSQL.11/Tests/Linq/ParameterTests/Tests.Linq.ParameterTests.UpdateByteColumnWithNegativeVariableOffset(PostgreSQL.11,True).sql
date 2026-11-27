-- PostgreSQL.11 PostgreSQL
UPDATE
	"ByteFieldUpdateTable"
SET
	"Field" = ("ByteFieldUpdateTable"."Field"::Int + -1)::SmallInt

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
LIMIT 2

