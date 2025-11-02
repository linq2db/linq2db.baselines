-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			gr.ParentID as ParentID
		FROM
			Child gr
		GROUP BY
			gr.ParentID
	) gr_1
		INNER JOIN (
			SELECT
				t.ParentID as ParentID,
				t.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY t.ParentID ORDER BY t.ChildID DESC) as rn
			FROM
				Child t
		) t1 ON gr_1.ParentID = t1.ParentID AND t1.rn <= 1

