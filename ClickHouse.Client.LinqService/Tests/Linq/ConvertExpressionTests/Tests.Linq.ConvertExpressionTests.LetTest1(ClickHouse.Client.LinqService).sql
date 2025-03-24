BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.cond
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a_Children.ParentID as cond,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn,
				a_Children.ParentID as ParentID
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.ParentID AND t1.rn <= 1
WHERE
	t1.cond IS NOT NULL

