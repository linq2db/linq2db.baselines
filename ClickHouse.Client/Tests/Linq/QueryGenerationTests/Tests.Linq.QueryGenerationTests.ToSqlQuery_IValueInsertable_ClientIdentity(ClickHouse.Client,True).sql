BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TableWithIdentity
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TableWithIdentity
(
	Id,
	Value
)
VALUES
(
	543,
	123
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

