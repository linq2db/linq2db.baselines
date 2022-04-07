BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" t
		INNER JOIN "Child" c_1 ON t."ParentID" = c_1."ParentID"
WHERE
	c_1."ParentID" = 1

