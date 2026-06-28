-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."Value1" = 1 OR x."Value1" = 2

