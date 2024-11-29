BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4596Form

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4596Form
(
	Id Int32,
	C1 FixedString(1)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4596Item

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4596Item
(
	Id         Int32,
	FormId     Int32,
	OrderIndex Int32,
	Name1      Nullable(String),
	Name2      Nullable(String),
	Name3      Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.c1,
	m_1.c2,
	d.Id,
	d.FormId,
	d.OrderIndex,
	d.Name1,
	d.Name2,
	d.Name3
FROM
	(
		SELECT
			t1.Id as Id,
			CASE
				WHEN t1.C1 = 'T' THEN true
				ELSE false
			END as c1,
			CASE
				WHEN t1.C1 <> 'T' THEN true
				ELSE false
			END as c2
		FROM
			Issue4596Form t1
		LIMIT 1
	) m_1,
	Issue4596Item d
WHERE
	d.FormId = m_1.Id
ORDER BY
	CASE
		WHEN m_1.c1 = true THEN d.OrderIndex
		ELSE 0
	END,
	CASE
		WHEN m_1.c2 = true THEN d.Name1
		ELSE ''
	END,
	CASE
		WHEN m_1.c2 = true THEN d.Name2
		ELSE ''
	END,
	CASE
		WHEN m_1.c2 = true THEN d.Name3
		ELSE ''
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.C1,
	CASE
		WHEN t1.C1 = 'T' THEN true
		ELSE false
	END,
	CASE
		WHEN t1.C1 <> 'T' THEN true
		ELSE false
	END
FROM
	Issue4596Form t1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4596Item

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4596Form

