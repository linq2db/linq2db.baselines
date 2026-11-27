-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"ByteFieldUpdateTable"
SET
	"Field" = ("ByteFieldUpdateTable"."Field"::Int + -1)::SmallInt

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
LIMIT 2

