BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c1.ParentID,
	c1.ChildID,
	c2_1.ParentID,
	c2_1.ChildID
FROM
	Child c1
		CROSS JOIN (
			SELECT
				c2.ParentID as ParentID,
				c2.ChildID as ChildID
			FROM
				Child c2
			ORDER BY
				c2.ParentID
			LIMIT 10 WITH TIES
		) c2_1

