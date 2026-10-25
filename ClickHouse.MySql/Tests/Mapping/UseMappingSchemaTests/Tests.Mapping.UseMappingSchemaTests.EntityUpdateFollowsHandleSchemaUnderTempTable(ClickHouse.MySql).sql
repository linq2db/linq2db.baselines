-- ClickHouse.MySql ClickHouse
CREATE TABLE SourceSchemaRowTemp
(
	Id    Int32,
	Value Int32,
	Name  Nullable(String),

	PRIMARY KEY (Id, Value)
)
ENGINE = MergeTree()
ORDER BY (Id, Value)

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SourceSchemaRow
UPDATE
	Value = 6,
	Name = 'b'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS SourceSchemaRowTemp

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

