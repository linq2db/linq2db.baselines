BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			toInt32(NULL) as c1
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p2.ParentID as ParentID,
			p2.Value1 as c1
		FROM
			Parent p2
	) p_1

