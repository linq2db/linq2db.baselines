BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestInsertOrReplaceTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TestInsertOrReplaceTable
(
	ID         Int32,
	FirstName  Nullable(String),
	LastName   Nullable(String),
	MiddleName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName
)
VALUES
(
	123,
	'John'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	TestInsertOrReplaceTable x
WHERE
	x.ID = 123 AND x.FirstName = 'John'

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestInsertOrReplaceTable

