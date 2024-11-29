BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT 2, 5
	) t2

