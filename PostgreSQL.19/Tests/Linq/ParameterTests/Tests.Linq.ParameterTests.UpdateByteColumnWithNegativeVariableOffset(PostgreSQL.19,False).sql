-- PostgreSQL.19 PostgreSQL12
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"ByteFieldUpdateTable"
SET
	"Field" = ("ByteFieldUpdateTable"."Field"::Int + :offset)::SmallInt

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Field"
FROM
	"ByteFieldUpdateTable" t1
LIMIT 2

