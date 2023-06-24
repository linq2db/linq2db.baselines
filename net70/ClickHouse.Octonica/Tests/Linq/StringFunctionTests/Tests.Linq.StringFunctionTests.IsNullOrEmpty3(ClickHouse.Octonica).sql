BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS IsNullOrEmptyTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO IsNullOrEmptyTable
(
	Id,
	Value
)
VALUES
(toInt32(1),'   '),
(toInt32(2),'')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id,
	p.Value
FROM
	IsNullOrEmptyTable p
WHERE
	(p.Value IS NULL OR CHAR_LENGTH(p.Value) = toInt32(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IsNullOrEmptyTable

