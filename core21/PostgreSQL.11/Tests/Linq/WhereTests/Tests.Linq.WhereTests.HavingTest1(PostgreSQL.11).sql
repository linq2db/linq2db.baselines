BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"
HAVING
	Count(*) > 1

