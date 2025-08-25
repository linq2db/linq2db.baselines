BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p_1.ID
FROM
	(
		SELECT
			p.ParentID as ID,
			p.Value1 as Value1
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			t1.ParentID as ID,
			t1.Value1 as Value1
		FROM
			Parent t1
	) p_1

