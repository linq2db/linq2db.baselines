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

WITH CTE_1 AS
(
	SELECT
		r.Value4
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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		r.Value4,
		r.Id,
		r.Value1,
		r.Value2,
		r.Value3,
		r.Value5
	FROM
		CteTable r
)
SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value3,
	t1.Value4,
	t1.Value5,
	d.Id
FROM
	CTE_1 t1
		LEFT JOIN CteChildTable d ON t1.Value4 = d.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteChildTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CteTable

