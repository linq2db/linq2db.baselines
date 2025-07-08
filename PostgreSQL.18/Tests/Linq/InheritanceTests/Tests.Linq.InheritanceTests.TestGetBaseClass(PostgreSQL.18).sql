BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."Value1" = 2 OR x."Value1" = 1

