-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			Child t1
		LIMIT 2, 18446744073709551615
	) t2

