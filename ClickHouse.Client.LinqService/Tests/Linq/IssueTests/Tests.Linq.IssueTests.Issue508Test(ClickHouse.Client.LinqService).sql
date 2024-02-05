BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID
WHERE
	c_1.ChildID = toInt32(11)
UNION DISTINCT
SELECT
	c_2.ParentID
FROM
	Child c_2
WHERE
	c_2.ChildID = toInt32(11)

