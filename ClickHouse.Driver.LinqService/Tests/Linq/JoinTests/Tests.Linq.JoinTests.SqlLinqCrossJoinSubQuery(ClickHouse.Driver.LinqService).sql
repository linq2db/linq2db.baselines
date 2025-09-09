BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p_1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT 10
	) p_1,
	(
		SELECT
			c_1.ChildID as ChildID
		FROM
			Child c_1
		LIMIT 10
	) t1

