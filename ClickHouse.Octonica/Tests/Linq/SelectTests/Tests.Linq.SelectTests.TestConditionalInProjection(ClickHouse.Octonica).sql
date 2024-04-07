BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MainEntityObject

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS MainEntityObject
(
	Id        Int32,
	MainValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO MainEntityObject
(
	Id,
	MainValue
)
VALUES
(toInt32(1),'MainValue 1'),
(toInt32(2),'MainValue 2')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ChildEntityObject
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ChildEntityObject
(
	Id,
	Value
)
VALUES
(toInt32(1),'Value 1')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sc.Id,
	sc.Value
FROM
	ChildEntityObject sc
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	c_1.Id,
	c_1.Value
FROM
	MainEntityObject m_1
		LEFT JOIN ChildEntityObject c_1 ON c_1.Id = m_1.Id
ORDER BY
	m_1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MainEntityObject

