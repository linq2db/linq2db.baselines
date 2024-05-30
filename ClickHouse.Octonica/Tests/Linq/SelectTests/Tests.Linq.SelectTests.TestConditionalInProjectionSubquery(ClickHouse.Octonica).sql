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
(1,'MainValue 1'),
(2,'MainValue 2')

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
(1,'Value 1')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	c_1.Id,
	CASE
		WHEN c_1.Id IS NOT NULL THEN c_1.Value
		WHEN q.MainValue IS NOT NULL THEN q.MainValue
		ELSE ''
	END
FROM
	MainEntityObject q
		LEFT JOIN ChildEntityObject c_1 ON c_1.Id = q.Id
WHERE
	c_1.Id % 2 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MainEntityObject

