BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ParentID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
	) p_1

