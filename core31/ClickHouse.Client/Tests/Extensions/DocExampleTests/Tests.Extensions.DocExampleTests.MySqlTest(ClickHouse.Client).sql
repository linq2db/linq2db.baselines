BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.ParentID,
	p_1.Value1
FROM
	(
		SELECT /* qq */
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p,
			Child c_1
	) p_1

