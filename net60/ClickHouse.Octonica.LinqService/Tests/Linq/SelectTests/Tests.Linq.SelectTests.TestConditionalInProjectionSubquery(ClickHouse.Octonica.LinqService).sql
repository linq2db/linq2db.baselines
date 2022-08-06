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
(
	toInt32(1),
	'MainValue 1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO MainEntityObject
(
	Id,
	MainValue
)
VALUES
(
	toInt32(2),
	'MainValue 2'
)

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
(
	toInt32(1),
	'Value 1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	q.Id,
	q.Value_2,
	q.Value_3
FROM
	(
		SELECT DISTINCT
			c_1.Id as Id,
			CASE
				WHEN (c_1.Id IS NOT NULL OR c_1.Value IS NOT NULL)
					THEN c_1.Value
				WHEN m_1.MainValue IS NOT NULL
					THEN m_1.MainValue
				ELSE ''
			END as Value_1,
			c_1.Value as Value_2,
			CASE
				WHEN m_1.MainValue IS NOT NULL
					THEN m_1.MainValue
				ELSE ''
			END as Value_3
		FROM
			MainEntityObject m_1
				LEFT JOIN ChildEntityObject c_1 ON c_1.Id = m_1.Id
	) q
WHERE
	q.Id % toInt32(2) = toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ChildEntityObject

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MainEntityObject

