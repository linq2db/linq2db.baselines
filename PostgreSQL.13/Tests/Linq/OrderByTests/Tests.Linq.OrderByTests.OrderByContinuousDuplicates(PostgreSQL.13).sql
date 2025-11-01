-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Parent" pp ON p."ParentID" = pp."ParentID"
ORDER BY
	p."ParentID" DESC

