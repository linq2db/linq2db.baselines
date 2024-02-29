BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID + toInt32(1) IN (
		SELECT
			c_1.ParentID
		FROM
			Child c_1
	)

