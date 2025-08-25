BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)

