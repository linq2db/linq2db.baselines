-- ClickHouse.Octonica ClickHouse

SELECT
	t.ParentID,
	t.ChildID
FROM
	Child t
WHERE
	t.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			(
				SELECT
					x.ParentID as ParentID
				FROM
					Child x
				GROUP BY
					x.ParentID
				ORDER BY
					max(x.ChildID) DESC
				LIMIT 2
			) t1
	)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

