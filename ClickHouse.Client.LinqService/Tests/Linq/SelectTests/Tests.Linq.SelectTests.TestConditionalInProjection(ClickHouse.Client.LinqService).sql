BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainEntityObject

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MainEntityObject
(
	Id        Int32,
	MainValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ChildEntityObject
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t2.Id,
	c_1.Id,
	c_1.Value,
	CASE
		WHEN c_1.Value <> 'Value 1' OR c_1.Value IS NULL THEN true
		ELSE false
	END,
	t1.Id,
	t1.Value_1
FROM
	MainEntityObject t2
		LEFT JOIN ChildEntityObject c_1 ON c_1.Id = t2.Id
		LEFT JOIN (
			SELECT
				sc.Id as Id,
				sc.Value as Value_1
			FROM
				ChildEntityObject sc
			LIMIT 1
		) t1 ON 1=1
ORDER BY
	t2.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainEntityObject

