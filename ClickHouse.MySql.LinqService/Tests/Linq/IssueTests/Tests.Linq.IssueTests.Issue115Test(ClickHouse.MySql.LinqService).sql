BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
		INNER JOIN Parent r ON c_1.ParentID = r.ParentID
WHERE
	r.ParentID > 4
UNION DISTINCT
SELECT
	c_2.ParentID as ParentID,
	c_2.ChildID as ChildID
FROM
	Child c_2
		INNER JOIN Parent r_1 ON c_2.ParentID = r_1.ParentID
WHERE
	r_1.ParentID <= 4

