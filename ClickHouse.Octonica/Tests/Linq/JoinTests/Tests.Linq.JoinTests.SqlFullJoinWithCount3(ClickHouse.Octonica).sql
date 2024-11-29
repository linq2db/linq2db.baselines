BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN COUNT(t1.ParentID) = COUNT(right_2.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
			THEN true
		ELSE false
	END
FROM
	Parent t1
		FULL JOIN (
			SELECT
				right_1.ParentID as ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 1
		) right_2 ON right_2.ParentID = t1.ParentID
LIMIT 2

