﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2032Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue2032Table
(
	Id       Int32,
	Decimal1 Decimal128(4),
	Decimal2 Nullable(Decimal128(4)),
	Decimal3 Nullable(Decimal128(4)),
	Int1     Nullable(Int32),
	Int2     Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2032Table
(
	Id,
	Decimal1,
	Decimal2,
	Decimal3,
	Int1,
	Int2
)
VALUES
(toInt32(1),toDecimal128('123.456', 4),NULL,NULL,NULL,NULL),
(toInt32(2),toDecimal128('-123.456', 4),toDecimal128('678.903', 4),toDecimal128('3523.2352', 4),toInt32(-123),toInt32(345))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Decimal1,
	r.Decimal2,
	Coalesce(r.Decimal3, toDecimal128('0.1', 4)),
	r.Int1,
	Coalesce(r.Int2, toInt32(22))
FROM
	Issue2032Table r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2032Table

