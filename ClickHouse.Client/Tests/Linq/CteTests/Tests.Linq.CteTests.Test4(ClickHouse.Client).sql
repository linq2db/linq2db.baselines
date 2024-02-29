BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE1_ AS
(
	SELECT
		c_1.ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID > toInt32(1)
),
LAST0 AS
(
	SELECT
		c4.ParentID,
		c4.ChildID
	FROM
		Child c4
	WHERE
		c4.ParentID % toInt32(2) = toInt32(0)
)
SELECT
	c4_1.ParentID,
	c4_1.ChildID
FROM
	CTE1_ p
		INNER JOIN LAST0 c4_1 ON c4_1.ParentID = p.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c4.ParentID,
	c4.ChildID
FROM
	Child c_1
		INNER JOIN Child c4 ON c4.ParentID = c_1.ParentID
WHERE
	c4.ParentID % toInt32(2) = toInt32(0) AND c_1.ParentID > toInt32(1)

