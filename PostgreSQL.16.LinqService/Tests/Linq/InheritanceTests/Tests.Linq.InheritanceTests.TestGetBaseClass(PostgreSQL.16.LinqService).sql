BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."Value1" = 2 OR x."Value1" = 1

