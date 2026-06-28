-- PostgreSQL.13 PostgreSQL13

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	f."ParentID" >= 1 OR f."ParentID" <= 4

