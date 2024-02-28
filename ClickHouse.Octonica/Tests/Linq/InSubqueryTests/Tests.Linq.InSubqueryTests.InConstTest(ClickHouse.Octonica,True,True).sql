BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_1.ParentID,
	c_1.Value1
FROM
	Parent c_1
WHERE
	toInt32(1) IN (
		SELECT
			p.Value1
		FROM
			Parent p
	)

