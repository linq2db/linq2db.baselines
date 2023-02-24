﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id    Int32,
	Value Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DataClass
(
	Id,
	Value
)
VALUES
(toInt32(1),'Frau'),
(toInt32(2),'Herr')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value = 'Frau'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	DataClass m_1
WHERE
	m_1.Value IN ('Frau', 'Herr')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

