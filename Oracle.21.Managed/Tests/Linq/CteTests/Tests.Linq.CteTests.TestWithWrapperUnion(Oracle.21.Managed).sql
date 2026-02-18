-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	"ParentID",
	"ChildID",
	"Parent_ParentID",
	"Parent_Value1"
)
AS
(
	SELECT
		child_1."ParentID",
		child_1."ChildID",
		a_Parent."ParentID",
		a_Parent."Value1"
	FROM
		"Child" child_1
			LEFT JOIN "Parent" a_Parent ON child_1."ParentID" = a_Parent."ParentID"
)
SELECT
	a_Parent_1."ParentID",
	a_Parent_1."ParentID",
	a_Parent_1."Value1",
	child_2."ParentID",
	child_2."ChildID"
FROM
	"Child" child_2
		LEFT JOIN "Parent" a_Parent_1 ON child_2."ParentID" = a_Parent_1."ParentID"
UNION
SELECT
	t1."Parent_ParentID",
	t1."Parent_ParentID",
	t1."Parent_Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	CTE_1 t1

-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	"ParentID",
	"ChildID",
	"Parent_ParentID",
	"Parent_Value1"
)
AS
(
	SELECT
		child_1."ParentID",
		child_1."ChildID",
		a_Parent."ParentID",
		a_Parent."Value1"
	FROM
		"Child" child_1
			LEFT JOIN "Parent" a_Parent ON child_1."ParentID" = a_Parent."ParentID"
)
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."Parent_ParentID",
	t1."Parent_ParentID",
	t1."Parent_Value1"
FROM
	CTE_1 t1
UNION
SELECT
	child_2."ParentID",
	child_2."ChildID",
	a_Parent_1."ParentID",
	a_Parent_1."ParentID",
	a_Parent_1."Value1"
FROM
	"Child" child_2
		LEFT JOIN "Parent" a_Parent_1 ON child_2."ParentID" = a_Parent_1."ParentID"

