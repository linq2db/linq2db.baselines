-- ClickHouse.Driver ClickHouse

SELECT
	pmp1.ChildID
FROM
	Child pmp1
		CROSS JOIN (
			SELECT DISTINCT
				pmp.ParentID as ParentID
			FROM
				Child pmp
		) pmp_1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

