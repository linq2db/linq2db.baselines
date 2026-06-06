-- ClickHouse.MySql ClickHouse

SELECT
	t2.Left_1,
	t1.ParentID
FROM
	(
		SELECT
			p.Value1 as Value1,
			p.ParentID as Left_1
		FROM
			Parent p
		WHERE
			p.ParentID <> 1
	) t2
		RIGHT JOIN (
			SELECT
				right_1.Value1 as Value1,
				right_1.ParentID as ParentID
			FROM
				Parent right_1
					INNER JOIN Parent right2 ON right_1.Value1 = right2.Value1 + 2
		) t1 ON t1.Value1 + 2 = t2.Value1
ORDER BY
	t2.Left_1

