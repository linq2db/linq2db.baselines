BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as unused
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as unused
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as unused
	FROM
		Child c_1
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				CTE1_ t1
		) THEN true
		ELSE false
	END

