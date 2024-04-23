BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			Child t1
		LIMIT 2, 18446744073709551615
	) t2

