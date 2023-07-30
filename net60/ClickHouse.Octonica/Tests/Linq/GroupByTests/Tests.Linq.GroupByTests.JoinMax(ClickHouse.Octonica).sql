BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
		INNER JOIN (
			SELECT
				maxOrNull(max_1.ChildID) as c1
			FROM
				Child max_1
			GROUP BY
				max_1.ParentID
		) t1 ON ch.ChildID = t1.c1

