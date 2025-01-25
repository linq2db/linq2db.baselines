BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableToInsert

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TableToInsert
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TableToInsert
(
	Id,
	Value
)
SELECT
	t1.Id,
	t1.Value
FROM
	(
		SELECT 3 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 4, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TableToInsert
(
	Id,
	Value
)
SELECT
	t1.Id,
	t1.Value
FROM
	(
		SELECT 3 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 4, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableToInsert

