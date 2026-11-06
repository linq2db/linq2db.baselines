-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("ChildID", "ParentID")
AS
(
	SELECT
		t1."ChildID",
		t1."ParentID"
	FROM
		"Child" t1
)
SELECT
	t2."ChildID",
	"a_Parent"."Value1"
FROM
	"CTE_1" t2
		LEFT JOIN "Parent" "a_Parent" ON t2."ParentID" = "a_Parent"."ParentID"
ORDER BY
	t2."ChildID"

