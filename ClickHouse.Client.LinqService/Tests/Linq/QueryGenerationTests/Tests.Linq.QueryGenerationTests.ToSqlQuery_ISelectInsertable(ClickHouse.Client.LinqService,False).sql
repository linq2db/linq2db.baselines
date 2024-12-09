BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithIdentitySrc

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TableWithIdentitySrc
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

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

INSERT INTO TableWithIdentitySrc
(
	Value
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
SELECT
	t1.Value + 123
FROM
	TableWithIdentitySrc t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithIdentitySrc

