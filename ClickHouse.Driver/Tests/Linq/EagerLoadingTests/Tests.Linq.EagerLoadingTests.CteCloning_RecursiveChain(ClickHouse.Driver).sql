BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Value2
	FROM
		CteTable r
	UNION ALL
	SELECT
		r_1.Value1 as Value2
	FROM
		cte t1
			INNER JOIN CteTable r_1 ON t1.Value2 = r_1.Value3
),
cte0 AS
(
	SELECT
		r_2.Value2
	FROM
		CteTable r_2
	UNION ALL
	SELECT
		r_3.Value2 as Value2
	FROM
		cte t2
			INNER JOIN CteTable r_3 ON t2.Value2 = r_3.Value3
	UNION ALL
	SELECT
		r_4.Value2 as Value2
	FROM
		cte0 t3
			INNER JOIN CteTable r_4 ON t3.Value2 = r_4.Value3
),
cte1 AS
(
	SELECT
		r_5.Value2,
		r_5.Value4
	FROM
		CteTable r_5
	UNION ALL
	SELECT
		r_6.Value2 as Value2,
		r_6.Id as Value4
	FROM
		cte0 t4
			INNER JOIN CteTable r_6 ON t4.Value2 = r_6.Value3
	UNION ALL
	SELECT
		r_7.Id as Value2,
		r_7.Value4 as Value4
	FROM
		cte t5
			INNER JOIN CteTable r_7 ON t5.Value2 = r_7.Value3
	UNION ALL
	SELECT
		r_8.Value2 as Value2,
		r_8.Value4 as Value4
	FROM
		cte1 t6
			INNER JOIN CteTable r_8 ON t6.Value2 = r_8.Value3
)
SELECT
	m_1.Id,
	d_1.Id,
	d_1.Value1,
	d_1.Value2,
	d_1.Value3,
	d_1.Value4,
	d_1.Value5
FROM
	(
		SELECT DISTINCT
			d.Id as Id
		FROM
			cte1 t7
				LEFT JOIN CteChildTable d ON t7.Value4 = d.Id
	) m_1
		INNER JOIN CteTable d_1 ON m_1.Id = d_1.Value3

BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Value2
	FROM
		CteTable r
	UNION ALL
	SELECT
		r_1.Value1 as Value2
	FROM
		cte t1
			INNER JOIN CteTable r_1 ON t1.Value2 = r_1.Value3
),
cte0 AS
(
	SELECT
		r_2.Value2
	FROM
		CteTable r_2
	UNION ALL
	SELECT
		r_3.Value2 as Value2
	FROM
		cte t2
			INNER JOIN CteTable r_3 ON t2.Value2 = r_3.Value3
	UNION ALL
	SELECT
		r_4.Value2 as Value2
	FROM
		cte0 t3
			INNER JOIN CteTable r_4 ON t3.Value2 = r_4.Value3
),
cte1 AS
(
	SELECT
		r_5.Value4 as Id,
		r_5.Value1,
		r_5.Value2,
		r_5.Value3,
		r_5.Value4,
		r_5.Value5
	FROM
		CteTable r_5
	UNION ALL
	SELECT
		r_6.Id as Id,
		r_6.Value1 as Value1,
		r_6.Value2 as Value2,
		r_6.Value3 as Value3,
		r_6.Id as Value4,
		r_6.Value4 as Value5
	FROM
		cte0 t4
			INNER JOIN CteTable r_6 ON t4.Value2 = r_6.Value3
	UNION ALL
	SELECT
		r_7.Id as Id,
		r_7.Value4 as Value1,
		r_7.Id as Value2,
		r_7.Value3 as Value3,
		r_7.Value4 as Value4,
		r_7.Value5 as Value5
	FROM
		cte t5
			INNER JOIN CteTable r_7 ON t5.Value2 = r_7.Value3
	UNION ALL
	SELECT
		r_8.Id as Id,
		r_8.Value1 as Value1,
		r_8.Value2 as Value2,
		r_8.Id as Value3,
		r_8.Value4 as Value4,
		r_8.Value5 as Value5
	FROM
		cte1 t6
			INNER JOIN CteTable r_8 ON t6.Value2 = r_8.Value3
)
SELECT
	t7.Id,
	t7.Value1,
	t7.Value2,
	t7.Value3,
	t7.Value4,
	t7.Value5,
	d.Id
FROM
	cte1 t7
		LEFT JOIN CteChildTable d ON t7.Value4 = d.Id

