BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	(
		SELECT
			p.Value1
		FROM
			Parent p
		LIMIT 1
	)

