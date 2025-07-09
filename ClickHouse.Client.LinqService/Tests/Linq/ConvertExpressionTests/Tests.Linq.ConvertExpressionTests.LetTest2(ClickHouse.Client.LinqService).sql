BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		INNER JOIN (
			SELECT
				a_Children.ParentID as cond,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.cond AND t1.rn <= 1

