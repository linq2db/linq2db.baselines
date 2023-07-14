BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	pmp1.ChildID
FROM
	Child pmp1,
	(
		SELECT
			pmp.ParentID as ParentID
		FROM
			Child pmp
		GROUP BY
			pmp.ParentID
	) t1

