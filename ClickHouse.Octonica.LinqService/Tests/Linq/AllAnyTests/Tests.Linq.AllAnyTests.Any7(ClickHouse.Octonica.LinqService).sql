BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)

