-- ClickHouse.Driver ClickHouse
CREATE TABLE SourceSchemaRowTemp
(
	Id    Int32,
	Value Int32,
	Name  Nullable(String),

	PRIMARY KEY (Id, Value)
)
ENGINE = MergeTree()
ORDER BY (Id, Value)

INSERT ASYNC BULK SourceSchemaRowTemp(Id, Value, Name)

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	SourceSchemaRow
UPDATE
	Value = 6,
	Name = 'b'
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS SourceSchemaRowTemp

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value,
	t1.Name
FROM
	SourceSchemaRow t1
LIMIT 2

