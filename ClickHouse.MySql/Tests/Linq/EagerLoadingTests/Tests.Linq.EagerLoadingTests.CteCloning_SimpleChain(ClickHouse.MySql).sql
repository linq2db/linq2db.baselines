BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE CTE_1 AS
(
	SELECT
		r.Id
	FROM
		CteTable r
),
CTE_2 AS
(
	SELECT
		r_1.Id
	FROM
		CTE_1 r_1
),
CTE_3 AS
(
	SELECT
		r_2.Id as Value4
	FROM
		CTE_2 r_2
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
			CTE_3 t1
				LEFT JOIN CteChildTable d ON t1.Value4 = d.Id
	) m_1
		INNER JOIN CteTable d_1 ON m_1.Id = d_1.Value3

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE CTE_1 AS
(
	SELECT
		r.Id,
		r.Value2,
		r.Value5,
		r.Value3,
		r.Value4
	FROM
		CteTable r
),
CTE_2 AS
(
	SELECT
		r_1.Id,
		r_1.Value2 as Value1,
		r_1.Value5 as Value3,
		r_1.Value3 as Value5,
		r_1.Value4
	FROM
		CTE_1 r_1
),
CTE_3 AS
(
	SELECT
		r_2.Id as Value4,
		r_2.Value1 as Id,
		r_2.Value3 as Value1,
		r_2.Value5 as Value2,
		r_2.Value4 as Value5
	FROM
		CTE_2 r_2
)
SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5,
	d.Id
FROM
	CTE_3 t1
		LEFT JOIN CteChildTable d ON t1.Value4 = d.Id

