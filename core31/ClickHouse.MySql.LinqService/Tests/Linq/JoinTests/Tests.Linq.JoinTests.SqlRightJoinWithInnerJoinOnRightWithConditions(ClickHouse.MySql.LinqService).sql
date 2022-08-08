BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	left_1.left_2,
	left_1.left_1,
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			p_1.Value1 as left_1,
			p_1.ParentID as left_2
		FROM
			Parent p_1
				INNER JOIN Parent p ON p_1.Value1 = p.Value1 + toInt32(2)
		WHERE
			p.ParentID <> toInt32(1) AND p_1.ParentID <> toInt32(2)
	) left_1
		RIGHT JOIN (
			SELECT
				p_2.Value1 as Value1,
				p_2.ParentID as ParentID
			FROM
				Parent p_2
			WHERE
				p_2.ParentID <> toInt32(1)
		) t1 ON t1.Value1 + toInt32(2) = left_1.left_1
ORDER BY
	left_1.left_2

