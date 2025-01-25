BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MainEntityObject

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS MainEntityObject
(
	Id        Int32,
	MainValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO MainEntityObject
(
	Id,
	MainValue
)
VALUES
(
	1,
	'MainValue 1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO MainEntityObject
(
	Id,
	MainValue
)
VALUES
(
	2,
	'MainValue 2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ChildEntityObject
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ChildEntityObject
(
	Id,
	Value
)
VALUES
(
	1,
	'Value 1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.Id,
	c_1.Value
FROM
	MainEntityObject m_1
		LEFT JOIN ChildEntityObject c_1 ON c_1.Id = m_1.Id
ORDER BY
	c_1.Id DESC

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MainEntityObject

