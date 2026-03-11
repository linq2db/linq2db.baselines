-- ClickHouse.Driver ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
	)

