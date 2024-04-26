BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.c1
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1.ParentID) = COUNT(right_1.ParentID) AND COUNT(left_1.ParentID) = COUNT(*)
					THEN true
				ELSE false
			END as c1
		FROM
			(
				SELECT
					p.ParentID as ParentID
				FROM
					Parent p
				WHERE
					p.ParentID <> 1
			) left_1
				FULL JOIN Parent right_1 ON right_1.ParentID = left_1.ParentID
	) t1
LIMIT 2

