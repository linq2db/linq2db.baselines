BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	c_1.Value1
FROM
	Parent c_1
WHERE
	toInt32(1) IN (
		SELECT
			toInt32(1)
		FROM
			Parent p
		WHERE
			p.Value1 IS NULL
	)

