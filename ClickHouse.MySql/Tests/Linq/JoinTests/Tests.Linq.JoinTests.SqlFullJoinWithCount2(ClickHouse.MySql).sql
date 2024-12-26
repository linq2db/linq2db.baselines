BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> 1
	) t1
		FULL JOIN Parent right_1 ON right_1.ParentID = t1.ParentID
LIMIT 2

