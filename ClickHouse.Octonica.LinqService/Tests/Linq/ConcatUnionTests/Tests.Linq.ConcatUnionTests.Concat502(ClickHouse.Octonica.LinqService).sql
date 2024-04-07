BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	(
		SELECT
			a_Parent.ParentID as ParentID,
			a_Parent.Value1 as Value1
		FROM
			Child c_1
				LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
		WHERE
			c_1.ParentID = toInt32(1)
		UNION ALL
		SELECT
			a_Parent_1.ParentID as ParentID,
			a_Parent_1.Value1 as Value1
		FROM
			Child c_2
				LEFT JOIN Parent a_Parent_1 ON c_2.ParentID = a_Parent_1.ParentID
		WHERE
			c_2.ParentID = toInt32(3)
	) p
WHERE
	(p.Value1 <> toInt32(2) OR p.Value1 IS NULL)

