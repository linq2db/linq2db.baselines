BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)

