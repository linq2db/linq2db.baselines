BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child t1
	)
FROM
	Parent p

