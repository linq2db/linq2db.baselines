-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" j ON p."ParentID" = j."ParentID"
WHERE
	p."ParentID" = 1

