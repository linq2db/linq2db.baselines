BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)

