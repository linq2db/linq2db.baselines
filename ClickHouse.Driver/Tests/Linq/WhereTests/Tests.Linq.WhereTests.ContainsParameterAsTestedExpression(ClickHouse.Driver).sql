-- ClickHouse.Driver ClickHouse
SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	2 IN (c_1.ParentID, c_1.ChildID)

