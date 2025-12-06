-- ClickHouse.MySql ClickHouse

SELECT
	p_1.Value1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			toInt32(NULL) as Value1
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p2.ParentID as ParentID,
			p2.Value1 as Value1
		FROM
			Parent p2
	) p_1

