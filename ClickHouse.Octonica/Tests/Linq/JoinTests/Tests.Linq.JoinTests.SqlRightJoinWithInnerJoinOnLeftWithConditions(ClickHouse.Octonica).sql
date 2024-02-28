BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	left_1.ParentID,
	left_1.Value1,
	t1.right_2,
	t1.right_1
FROM
	(
		SELECT
			p.Value1 as Value1,
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> toInt32(1)
	) left_1
		RIGHT JOIN (
			SELECT
				p_2.Value1 as right_1,
				p_2.ParentID as right_2
			FROM
				Parent p_2
					INNER JOIN Parent p_1 ON p_2.Value1 = p_1.Value1 + toInt32(2)
			WHERE
				p_1.ParentID <> toInt32(1) AND p_2.ParentID <> toInt32(2)
		) t1 ON t1.right_1 + toInt32(2) = left_1.Value1
ORDER BY
	left_1.ParentID

