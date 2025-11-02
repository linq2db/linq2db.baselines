-- ClickHouse.Driver ClickHouse

SELECT
	t1.Left_1,
	right_2.Right_1
FROM
	(
		SELECT
			p.Value1 as Value1,
			p.ParentID as Left_1
		FROM
			Parent p
		WHERE
			p.ParentID <> 1
	) t1
		FULL JOIN (
			SELECT
				right_1.ParentID as Right_1,
				right_1.Value1 + 2 as c1
			FROM
				Parent right_1
					INNER JOIN Parent right2 ON right_1.Value1 = right2.Value1 + 2
			WHERE
				right_1.ParentID <> 2 AND right2.ParentID <> 1
		) right_2 ON right_2.c1 = t1.Value1 OR right_2.c1 IS NULL AND t1.Value1 IS NULL
ORDER BY
	t1.Left_1

