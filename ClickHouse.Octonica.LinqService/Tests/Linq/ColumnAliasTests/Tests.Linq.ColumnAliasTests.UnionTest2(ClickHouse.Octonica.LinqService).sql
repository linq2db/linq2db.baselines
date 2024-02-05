BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
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
WHERE
	p.ParentID > toInt32(1)

