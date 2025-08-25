BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)

