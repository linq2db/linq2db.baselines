-- ClickHouse.MySql ClickHouse
SELECT
	p_1.Ordered,
	p_1.Partitioned,
	toInt64(ROW_NUMBER() OVER (PARTITION BY p_1.c1 ORDER BY p_1.ParentID)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY p_1.Ordered ORDER BY p_1.ParentID)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY p_1.Partitioned ORDER BY p_1.ParentID))
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (ORDER BY p.ParentID)) as Ordered,
			toInt64(ROW_NUMBER() OVER (PARTITION BY p.Value1)) as Partitioned,
			toInt64(ROW_NUMBER() OVER ()) as c1,
			p.ParentID as ParentID
		FROM
			Parent p
	) p_1

