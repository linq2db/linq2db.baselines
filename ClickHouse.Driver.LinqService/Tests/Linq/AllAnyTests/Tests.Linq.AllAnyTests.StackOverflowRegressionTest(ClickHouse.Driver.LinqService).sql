BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)

