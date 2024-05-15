BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DataClass
(
	Id,
	Value
)
VALUES
(1,'Frau'),
(2,'Herr')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value = 'Frau'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value IN ('Frau', 'Herr')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DataClass

