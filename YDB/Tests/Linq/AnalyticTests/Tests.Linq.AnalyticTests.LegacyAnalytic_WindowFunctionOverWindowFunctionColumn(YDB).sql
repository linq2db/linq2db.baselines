-- YDB Ydb
SELECT
	p_1.Ordered as Ordered,
	p_1.Partitioned as Partitioned,
	ROW_NUMBER() OVER (PARTITION BY p_1.c1 ORDER BY p_1.ParentID) as c1,
	ROW_NUMBER() OVER (PARTITION BY p_1.Ordered ORDER BY p_1.ParentID) as c2,
	ROW_NUMBER() OVER (PARTITION BY p_1.Partitioned ORDER BY p_1.ParentID) as c3
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p.ParentID) as Ordered,
			ROW_NUMBER() OVER (PARTITION BY p.Value1) as Partitioned,
			ROW_NUMBER() OVER () as c1,
			p.ParentID as ParentID
		FROM
			Parent p
	) p_1

