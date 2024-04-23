BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableToInsert

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TableToInsert
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
		SELECT 2 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 3, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
		SELECT 2 AS Id, 'Janet' AS Value
		UNION ALL
		SELECT 3, 'Doe') t1
		LEFT JOIN TableToInsert t ON t.Id = t1.Id
WHERE
	t.Id IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableToInsert

