-- ClickHouse.Octonica ClickHouse
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
			p.ParentID = 2
		LIMIT 1
	) p_1
		INNER JOIN Child c_1 ON c_1.ParentID = p_1.ParentID

