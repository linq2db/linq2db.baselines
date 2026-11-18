-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."ChildID",
	Coalesce(c_1."ChildID", 0) BETWEEN 0 AND 100,
	Coalesce(c_1."ChildID", 0) NOT BETWEEN 0 AND 100,
	CASE
		WHEN c_1."ChildID" BETWEEN 0 AND 100 THEN True
		ELSE False
	END
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
WHERE
	p."ParentID" = 5
LIMIT 2

