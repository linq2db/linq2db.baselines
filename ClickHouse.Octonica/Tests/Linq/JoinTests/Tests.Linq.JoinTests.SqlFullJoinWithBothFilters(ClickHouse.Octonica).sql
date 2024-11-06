BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	right_2.ParentID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> 1
	) t1
		FULL JOIN (
			SELECT
				right_1.ParentID as ParentID,
				right_1.ParentID as ParentID_1
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 2
		) right_2 ON right_2.ParentID_1 = t1.ParentID
ORDER BY
	t1.ParentID

