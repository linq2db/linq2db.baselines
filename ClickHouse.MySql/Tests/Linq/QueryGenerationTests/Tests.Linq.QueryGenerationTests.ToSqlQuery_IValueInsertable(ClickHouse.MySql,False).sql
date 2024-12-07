BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TableWithIdentity
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

