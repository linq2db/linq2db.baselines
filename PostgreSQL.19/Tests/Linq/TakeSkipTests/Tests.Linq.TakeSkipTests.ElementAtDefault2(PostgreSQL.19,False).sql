-- PostgreSQL.19 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
LIMIT 1 OFFSET 300000 

