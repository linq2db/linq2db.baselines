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
	r.Id,
	r.Value
FROM
	(
		SELECT toInt32(2) AS Id, 'Janet' AS Value
		UNION ALL
		SELECT toInt32(3), 'Doe') r
		LEFT JOIN TableToInsert t ON t.Id = r.Id
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
	r.Id,
	r.Value
FROM
	(
		SELECT toInt32(2) AS Id, 'Janet' AS Value
		UNION ALL
		SELECT toInt32(3), 'Doe') r
		LEFT JOIN TableToInsert t ON t.Id = r.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableToInsert

