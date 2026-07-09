-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT DISTINCT
	c_1."ChildID"
FROM
	"Parent" gg
		LEFT JOIN "Child" c_1 ON gg."ParentID" = c_1."ParentID" AND c_1."ParentID" = 1

