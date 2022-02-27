BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	left_1."ParentID",
	left_1."Value1",
	p."ParentID",
	p."Value1"
FROM
	"Parent" left_1
		INNER JOIN "Parent" left2 ON left_1."Value1" = left2."Value1" + 2
		FULL JOIN "Parent" p ON p."Value1" + 2 = left_1."Value1"
ORDER BY
	left_1."ParentID"

