BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table"
SET
	"Field" = ("Issue4963Table"."Field"::Int + :offset)::SmallInt

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"Issue4963Table" t1
LIMIT 2

