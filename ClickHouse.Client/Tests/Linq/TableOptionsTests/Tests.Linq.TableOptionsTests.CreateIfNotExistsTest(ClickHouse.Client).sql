BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO CreateIfNotExistsTable
(
	Id,
	Value
)
VALUES
(
	1,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	CreateIfNotExistsTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

