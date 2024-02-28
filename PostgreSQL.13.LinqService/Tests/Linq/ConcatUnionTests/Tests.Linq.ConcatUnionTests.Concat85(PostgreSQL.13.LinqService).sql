BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	Coalesce(c_1."Value1", 0),
	c_1."ParentID"
FROM
	"Parent" c_1
UNION ALL
SELECT
	c_2."ParentID",
	c_2."ParentID" + 1,
	c_2."ChildID"
FROM
	"Child" c_2

