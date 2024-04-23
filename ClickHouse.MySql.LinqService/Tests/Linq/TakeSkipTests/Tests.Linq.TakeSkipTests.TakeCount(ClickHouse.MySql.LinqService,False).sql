BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			Child t1
		LIMIT 5
	) t2

