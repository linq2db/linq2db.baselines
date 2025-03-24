BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	right_2.cond
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
				right_1.ParentID as cond,
				right_1.ParentID as ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 2
		) right_2 ON right_2.ParentID = t1.ParentID
ORDER BY
	t1.ParentID

