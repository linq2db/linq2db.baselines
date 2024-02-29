BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Value1
FROM
	(
		SELECT
			p1.ParentID as ParentID,
			NULL as Value1
		FROM
			Parent p1
		UNION DISTINCT
		SELECT
			p2.ParentID as ParentID,
			p2.Value1 as Value1
		FROM
			Parent p2
	) p

