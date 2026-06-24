-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."Value1" = 1 OR x."Value1" = 2

