BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT 10
	) p_1
		FULL JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

