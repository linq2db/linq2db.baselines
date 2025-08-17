BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	CreateIfNotExistsTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

