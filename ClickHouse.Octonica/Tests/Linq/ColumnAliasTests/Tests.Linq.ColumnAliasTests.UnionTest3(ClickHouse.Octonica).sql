BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
		UNION DISTINCT
		SELECT
			t2.ParentID as ParentID,
			t2.Value1 as Value1
		FROM
			Parent t2
	) p

