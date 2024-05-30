BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.c1
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1.ParentID) = COUNT(right_2.ParentID) AND COUNT(left_1.ParentID) = COUNT(*)
					THEN true
				ELSE false
			END as c1
		FROM
			Parent left_1
				FULL JOIN (
					SELECT
						right_1.ParentID as ParentID
					FROM
						Parent right_1
					WHERE
						right_1.ParentID <> 1
				) right_2 ON right_2.ParentID = left_1.ParentID
	) t1
LIMIT 2

