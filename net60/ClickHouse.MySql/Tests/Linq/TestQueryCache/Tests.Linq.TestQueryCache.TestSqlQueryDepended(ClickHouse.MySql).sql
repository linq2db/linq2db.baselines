BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ManyFields

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ManyFields
(
	Id     Int32,
	Field1 Nullable(Int32),
	Field2 Nullable(Int32),
	Field3 Nullable(Int32),
	Field4 Nullable(Int32),
	Field5 Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ManyFields

