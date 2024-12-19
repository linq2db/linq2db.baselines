BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
			THEN true
		ELSE false
	END
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

