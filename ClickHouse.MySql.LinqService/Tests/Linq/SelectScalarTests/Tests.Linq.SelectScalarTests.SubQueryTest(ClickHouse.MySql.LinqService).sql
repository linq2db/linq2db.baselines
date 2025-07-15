BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	(
		SELECT
			p.Value1
		FROM
			Parent p
		LIMIT 1
	)

