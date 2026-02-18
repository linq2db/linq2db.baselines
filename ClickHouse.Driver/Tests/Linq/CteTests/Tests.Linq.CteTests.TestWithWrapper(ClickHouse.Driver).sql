-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		child_1.ParentID as ParentID,
		child_1.ChildID as ChildID
	FROM
		Child child_1
)
SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN CTE_1 c_1 ON p.ParentID = c_1.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

