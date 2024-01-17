BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	NOT (c_1.ParentID = toInt32(2) OR c_1.ParentID = toInt32(3)) AND
	c_1.ChildID <> toInt32(44)

