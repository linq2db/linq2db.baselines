BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	left_3."ParentID", 
	left_3."Value1", 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" left_3
		INNER JOIN "Parent" left2 ON left_3."Value1" = left2."Value1" + 2
		RIGHT JOIN "Parent" p ON (p."Value1" + 2 IS NOT NULL AND p."Value1" + 2 = left_3."Value1")
ORDER BY
	left_3."ParentID"

