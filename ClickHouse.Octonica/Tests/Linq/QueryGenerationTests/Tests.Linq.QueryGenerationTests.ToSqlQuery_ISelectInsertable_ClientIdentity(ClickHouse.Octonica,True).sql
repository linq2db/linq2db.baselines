BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithIdentitySrc

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TableWithIdentitySrc
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TableWithIdentity
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TableWithIdentitySrc
(
	Value
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TableWithIdentity
(
	Id,
	Value
)
SELECT
	345,
	t1.Value + 123
FROM
	TableWithIdentitySrc t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithIdentitySrc

