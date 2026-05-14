-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (
		SELECT
			p_1.ParentID
		FROM
			Parent p_1
		WHERE
			p_1.ParentID <= 2
		UNION DISTINCT
		SELECT
			c_1.ParentID
		FROM
			Child c_1
		WHERE
			c_1.ParentID >= 3
	)
ORDER BY
	p.ParentID

