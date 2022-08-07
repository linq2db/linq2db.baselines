BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	(
		SELECT
			c_1.ParentID + toInt32(1)
		FROM
			Child c_1
		LIMIT toInt32(1)
	)
FROM
	Parent p

