BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	(
		SELECT
			p.ParentID
		FROM
			Child p
		LIMIT toInt32(1)
	)
FROM
	Parent p_1

