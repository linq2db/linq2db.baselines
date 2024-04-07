BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(left_1.ParentID),
	COUNT(p_1.ParentID),
	COUNT(*)
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> toInt32(1)
	) left_1
		FULL JOIN Parent p_1 ON p_1.ParentID = left_1.ParentID
LIMIT toInt32(2)

