-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID > 30
),
CTE_2 AS
(
	SELECT
		c_2.ChildID as ChildID
	FROM
		Child c_2
	WHERE
		c_2.ChildID > 40
)
SELECT
	t1.ChildID
FROM
	CTE_1 t1
UNION ALL
SELECT
	t2.ChildID as ChildID
FROM
	CTE_2 t2

-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID > 20
),
CTE_2 AS
(
	SELECT
		c_2.ChildID as ChildID
	FROM
		Child c_2
	WHERE
		c_2.ChildID > 50
)
SELECT
	t1.ChildID
FROM
	CTE_1 t1
UNION ALL
SELECT
	t2.ChildID as ChildID
FROM
	CTE_2 t2

