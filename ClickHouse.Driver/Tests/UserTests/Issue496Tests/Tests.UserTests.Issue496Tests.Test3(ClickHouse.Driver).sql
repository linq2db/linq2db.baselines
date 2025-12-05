-- ClickHouse.Driver ClickHouse

SELECT
	a_Children.ChildID,
	a_Children.ParentID
FROM
	Parent p
		INNER JOIN Child a_Children ON toInt64(p.ParentID) = a_Children.ParentID
WHERE
	p.ParentID = 1

