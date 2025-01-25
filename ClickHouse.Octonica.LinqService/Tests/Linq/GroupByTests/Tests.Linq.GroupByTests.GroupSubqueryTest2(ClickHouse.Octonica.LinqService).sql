BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	pmp1.ChildID
FROM
	Child pmp1
		CROSS JOIN (
			SELECT
				pmp.ParentID as ParentID
			FROM
				Child pmp
			GROUP BY
				pmp.ParentID
		) pmp_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

