BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	left_1.ParentID,
	left_1.Value1,
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		WHERE
			p.ParentID <> toInt32(1)
	) left_1
		FULL JOIN (
			SELECT
				p_1.ParentID as ParentID,
				p_1.Value1 as Value1
			FROM
				Parent p_1
			WHERE
				p_1.ParentID <> toInt32(2)
		) t1 ON t1.ParentID = left_1.ParentID
ORDER BY
	left_1.ParentID

