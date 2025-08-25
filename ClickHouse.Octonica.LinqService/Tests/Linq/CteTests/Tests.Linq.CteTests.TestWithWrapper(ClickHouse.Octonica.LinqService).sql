BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		child_1.ParentID as Child_ParentID,
		child_1.ChildID as Child_ChildID
	FROM
		Child child_1
)
SELECT
	p.ParentID,
	p.Value1,
	c_1.Child_ParentID,
	c_1.Child_ChildID
FROM
	Parent p
		INNER JOIN CTE_1 c_1 ON p.ParentID = c_1.Child_ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

