-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		r.Value4 as Value4
	FROM
		CteTable r
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
			CTE_1 t1
				LEFT JOIN CteChildTable d ON t1.Value4 = d.Id
	) m_1
		INNER JOIN CteTable d_1 ON m_1.Id = d_1.Value3

-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		r.Value4 as Value4,
		r.Id as Id,
		r.Value1 as Value1,
		r.Value2 as Value2,
		r.Value3 as Value3,
		r.Value5 as Value5
	FROM
		CteTable r
)
SELECT
	t2.Id,
	t2.Value1,
	t2.Value2,
	t2.Value3,
	t2.Value4,
	t2.Value5,
	d.Id
FROM
	(
		SELECT
			t1.Id as Id,
			t1.Value1 as Value1,
			t1.Value2 as Value2,
			t1.Value3 as Value3,
			t1.Value4 as Value4,
			t1.Value5 as Value5
		FROM
			CTE_1 t1
	) t2
		LEFT JOIN CteChildTable d ON t2.Value4 = d.Id

