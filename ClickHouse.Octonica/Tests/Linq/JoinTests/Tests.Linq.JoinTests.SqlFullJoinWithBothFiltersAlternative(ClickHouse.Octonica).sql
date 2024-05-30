BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	left_2.left_1,
	t1.ParentID
FROM
	(
		SELECT
			left_1.ParentID as left_1
		FROM
			Parent left_1
		WHERE
			left_1.ParentID <> 1
	) left_2
		FULL JOIN (
			SELECT
				right_1.ParentID as ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 2
		) t1 ON t1.ParentID = left_2.left_1
ORDER BY
	left_2.left_1

