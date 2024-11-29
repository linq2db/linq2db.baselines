BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT 2, 18446744073709551615
	) t2

