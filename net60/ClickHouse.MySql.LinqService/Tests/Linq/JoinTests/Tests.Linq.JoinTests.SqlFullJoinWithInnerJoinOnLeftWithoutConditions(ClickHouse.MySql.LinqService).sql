BeforeExecute
-- ClickHouse.MySql ClickHouse

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
		FULL JOIN (
			SELECT
				right_1.Value1 as right_1,
				right_1.ParentID as right_2
			FROM
				Parent right_1
					INNER JOIN Parent right2 ON right_1.Value1 = right2.Value1 + toInt32(2)
		) t1 ON t1.right_1 + toInt32(2) = left_1.Value1
ORDER BY
	left_1.ParentID

