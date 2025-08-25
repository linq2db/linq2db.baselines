BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	(
		SELECT
			p.Value1
		FROM
			Parent p
		LIMIT 1
	)

