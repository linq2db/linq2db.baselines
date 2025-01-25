BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Parent564

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Parent564
(
	Id          Int32,
	Type        Nullable(String),
	StringValue Nullable(String),
	IntValue    Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent564
(
	Type,
	StringValue
)
VALUES
(
	'Child564A',
	'SomeValue'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent564
(
	Type,
	IntValue
)
VALUES
(
	'Child564B',
	911
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Parent564 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Parent564

