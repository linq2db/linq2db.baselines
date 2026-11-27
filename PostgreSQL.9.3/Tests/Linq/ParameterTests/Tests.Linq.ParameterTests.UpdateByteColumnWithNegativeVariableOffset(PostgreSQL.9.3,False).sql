-- PostgreSQL.9.3 PostgreSQL
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"ByteFieldUpdateTable"
SET
	"Field" = ("ByteFieldUpdateTable"."Field"::Int + :offset)::SmallInt

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
LIMIT 2

