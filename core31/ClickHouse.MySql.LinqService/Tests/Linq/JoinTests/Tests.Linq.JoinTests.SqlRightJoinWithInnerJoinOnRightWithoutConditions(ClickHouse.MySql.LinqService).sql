BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	left_1.ParentID,
	left_1.Value1,
	t1.ParentID,
	t1.Value1
FROM
	Parent left_1
		INNER JOIN Parent left2 ON left_1.Value1 = left2.Value1 + toInt32(2)
		RIGHT JOIN (
			SELECT
				p.Value1 as Value1,
				p.ParentID as ParentID
			FROM
				Parent p
			WHERE
				p.ParentID <> toInt32(1)
		) t1 ON t1.Value1 + toInt32(2) = left_1.Value1
ORDER BY
	left_1.ParentID

