-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

-- ClickHouse.Driver ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

-- ClickHouse.Driver ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child c_1
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			CTE1_ t1
	)

