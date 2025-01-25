BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child t1
	)
FROM
	Parent p

