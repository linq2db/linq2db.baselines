BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		child_1.ParentID as Child_ParentID,
		child_1.ChildID as Child_ChildID,
		a_Parent.ParentID as Parent_ParentID,
		a_Parent.Value1 as Parent_Value1
	FROM
		Child child_1
			LEFT JOIN Parent a_Parent ON child_1.ParentID = a_Parent.ParentID
)
SELECT
	a_Parent_1.ParentID,
	a_Parent_1.ParentID as ParentID_1,
	a_Parent_1.Value1,
	child_2.ParentID as ParentID_2,
	child_2.ChildID
FROM
	Child child_2
		LEFT JOIN Parent a_Parent_1 ON child_2.ParentID = a_Parent_1.ParentID
UNION DISTINCT
SELECT
	t1.Parent_ParentID as ParentID,
	t1.Parent_ParentID as ParentID_1,
	t1.Parent_Value1 as Value1,
	t1.Child_ParentID as ParentID_2,
	t1.Child_ChildID as ChildID
FROM
	CTE_1 t1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		child_1.ParentID as Child_ParentID,
		child_1.ChildID as Child_ChildID,
		a_Parent.ParentID as Parent_ParentID,
		a_Parent.Value1 as Parent_Value1
	FROM
		Child child_1
			LEFT JOIN Parent a_Parent ON child_1.ParentID = a_Parent.ParentID
)
SELECT
	t1.Child_ParentID as ParentID,
	t1.Child_ChildID as ChildID,
	t1.Parent_ParentID as ParentID_1,
	t1.Parent_ParentID as ParentID_2,
	t1.Parent_Value1 as Value1
FROM
	CTE_1 t1
UNION DISTINCT
SELECT
	child_2.ParentID as ParentID,
	child_2.ChildID as ChildID,
	a_Parent_1.ParentID as ParentID_1,
	a_Parent_1.ParentID as ParentID_2,
	a_Parent_1.Value1 as Value1
FROM
	Child child_2
		LEFT JOIN Parent a_Parent_1 ON child_2.ParentID = a_Parent_1.ParentID

