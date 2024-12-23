BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4469Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue4469Table
(
	Integer Int32,
	Decimal Decimal128(5),
	Double  Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4469Table
(
	Integer,
	Decimal,
	Double
)
VALUES
(100,toDecimal128('100', 5),toFloat64(100))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDecimal128(toFloat64(toDecimal128(v.Integer, 10)) / toDecimal32('33', 0), 10),
	toDecimal128(toFloat64(v.Decimal) / toFloat64(toDecimal128('33', 5)), 5),
	v.Double / toFloat64(toDecimal128('33', 10))
FROM
	Issue4469Table v
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4469Table

