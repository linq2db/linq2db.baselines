-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.ParentID IS NOT NULL THEN t1.ChildID
		ELSE 0
	END
FROM
	Parent t2
		LEFT JOIN (
			SELECT
				a_Children.ParentID as ParentID,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
			FROM
				Child a_Children
		) t1 ON t2.ParentID = t1.ParentID AND t1.rn = 1
		LEFT JOIN GrandChild names_1 ON t2.ParentID = names_1.ParentID

