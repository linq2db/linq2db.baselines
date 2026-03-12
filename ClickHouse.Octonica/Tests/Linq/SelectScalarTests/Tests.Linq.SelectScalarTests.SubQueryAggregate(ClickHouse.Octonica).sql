-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Parent t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			Child t2
	)

