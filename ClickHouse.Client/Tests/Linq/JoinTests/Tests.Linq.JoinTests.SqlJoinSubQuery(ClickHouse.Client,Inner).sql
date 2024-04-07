BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.ParentID,
	r.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > toInt32(0)
		LIMIT toInt32(10)
	) p_1
		INNER JOIN Child r ON p_1.ParentID = r.ParentID

