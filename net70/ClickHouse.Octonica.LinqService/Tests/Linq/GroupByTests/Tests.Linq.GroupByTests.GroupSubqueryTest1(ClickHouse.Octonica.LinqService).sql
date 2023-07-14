BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	pmp1.ChildID
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Child t1
		GROUP BY
			t1.ParentID
	) pmp,
	Child pmp1

