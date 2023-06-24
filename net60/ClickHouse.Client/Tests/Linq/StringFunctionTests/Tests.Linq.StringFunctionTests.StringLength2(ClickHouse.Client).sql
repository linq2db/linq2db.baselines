BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS IsNullOrEmptyTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IsNullOrEmptyTable
(
	Id,
	Value
)
VALUES
(toInt32(1),'   '),
(toInt32(2),'')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.Value
FROM
	IsNullOrEmptyTable p
WHERE
	CHAR_LENGTH(p.Value) = toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

