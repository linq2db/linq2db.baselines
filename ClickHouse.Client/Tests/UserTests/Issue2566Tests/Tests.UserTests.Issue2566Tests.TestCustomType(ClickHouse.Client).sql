BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DataClass
(
	Id,
	Value
)
VALUES
(1,'Frau'),
(2,'Herr')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value = 'Frau' AND m_1.Value IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value IN ('Frau', 'Herr')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DataClass

