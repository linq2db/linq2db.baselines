-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("ParentID", "ChildID")
AS
(
	SELECT
		child_1."ParentID",
		child_1."ChildID"
	FROM
		"Child" child_1
)
SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		INNER JOIN "CTE_1" c_1 ON p."ParentID" = c_1."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

