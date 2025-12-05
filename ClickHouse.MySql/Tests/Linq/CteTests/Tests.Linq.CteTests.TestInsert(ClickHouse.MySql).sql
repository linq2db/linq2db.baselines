-- ClickHouse.MySql ClickHouse

INSERT INTO CteChild
(
	ChildID,
	ParentID
)
WITH CTE1_ AS
(
	SELECT
		c_1.ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID > 1
),
LAST0 AS
(
	SELECT
		c4.ParentID,
		c4.ChildID
	FROM
		Child c4
	WHERE
		c4.ParentID % 2 = 0
)
SELECT DISTINCT
	c4_1.ChildID,
	c4_1.ParentID
FROM
	CTE1_ t1
		INNER JOIN LAST0 c4_1 ON c4_1.ParentID = t1.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID
FROM
	CteChild t1
ORDER BY
	t1.ChildID,
	t1.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID
FROM
	(
		SELECT DISTINCT
			c4.ChildID as ChildID,
			c4.ParentID as ParentID
		FROM
			Child c_1
				INNER JOIN Child c4 ON c4.ParentID = c_1.ParentID
		WHERE
			c_1.ParentID > 1 AND c4.ParentID % 2 = 0
	) t1
ORDER BY
	t1.ChildID,
	t1.ParentID

