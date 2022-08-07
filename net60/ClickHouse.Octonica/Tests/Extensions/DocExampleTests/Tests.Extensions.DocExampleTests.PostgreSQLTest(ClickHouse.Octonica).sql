BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ParentID,
	p_1.Value1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p,
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID
	) p_1
WHERE
	p_1.ParentID < toInt32(-100)

