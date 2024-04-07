BeforeExecute
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
			p.ParentID > toInt32(0)
		LIMIT toInt32(10)
	) p_1,
	(
		SELECT
			t1.ChildID as ChildID
		FROM
			Child t1
		LIMIT toInt32(10)
	) c_1

