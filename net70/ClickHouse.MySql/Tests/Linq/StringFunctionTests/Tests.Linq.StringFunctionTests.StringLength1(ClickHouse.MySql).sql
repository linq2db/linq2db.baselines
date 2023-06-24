BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS IsNullOrEmptyTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO IsNullOrEmptyTable
(
	Id,
	Value
)
VALUES
(toInt32(1),'   '),
(toInt32(2),'')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.Value
FROM
	IsNullOrEmptyTable p
WHERE
	CHAR_LENGTH(p.Value) = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

