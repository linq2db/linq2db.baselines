BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CteTable
(
	Id     Int32,
	Value1 Int32,
	Value2 Int32,
	Value3 Int32,
	Value4 Int32,
	Value5 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteChildTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CteChildTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Value2,
		r.Value4
	FROM
		CteTable r
	UNION ALL
	SELECT
		r_1.Value2 as Value2,
		r_1.Value4 as Value4
	FROM
		cte t1
			INNER JOIN CteTable r_1 ON t1.Value2 = r_1.Value3
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
			cte t2
				LEFT JOIN CteChildTable d ON t2.Value4 = d.Id
	) m_1
		INNER JOIN CteTable d_1 ON m_1.Id = d_1.Value3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Id,
		r.Value1,
		r.Value2,
		r.Value3,
		r.Value4,
		r.Value5
	FROM
		CteTable r
	UNION ALL
	SELECT
		r_1.Id as Id,
		r_1.Value1 as Value1,
		r_1.Value2 as Value2,
		r_1.Value3 as Value3,
		r_1.Value4 as Value4,
		r_1.Value5 as Value5
	FROM
		cte t1
			INNER JOIN CteTable r_1 ON t1.Value2 = r_1.Value3
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
	cte t2
		LEFT JOIN CteChildTable d ON t2.Value4 = d.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteChildTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteTable

