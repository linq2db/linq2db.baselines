BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN left_1.ParentID IS NOT NULL THEN left_1.ParentID
		ELSE NULL
	END,
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
	CASE
		WHEN left_1.ParentID IS NOT NULL THEN left_1.ParentID
		ELSE NULL
	END

