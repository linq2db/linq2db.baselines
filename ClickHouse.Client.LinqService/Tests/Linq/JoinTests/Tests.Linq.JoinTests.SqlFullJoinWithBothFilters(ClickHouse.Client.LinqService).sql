BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	left_1.ParentID,
	right_2.ParentID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> 1
	) left_1
		FULL JOIN (
			SELECT
				right_1.ParentID as ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 2
		) right_2 ON right_2.ParentID = left_1.ParentID
ORDER BY
	left_1.ParentID

