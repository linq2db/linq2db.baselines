BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IntegerConverts

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS IntegerConverts
(
	Id      Int32,
	Byte    UInt8,
	SByte   Int8,
	Int16   Int16,
	UInt16  UInt16,
	Int32   Int32,
	UInt32  UInt32,
	Int64   Int64,
	UInt64  UInt64,
	ByteN   Nullable(UInt8),
	SByteN  Nullable(Int8),
	Int16N  Nullable(Int16),
	UInt16N Nullable(UInt16),
	Int32N  Nullable(Int32),
	UInt32N Nullable(UInt32),
	Int64N  Nullable(Int64),
	UInt64N Nullable(UInt64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO IntegerConverts
(
	Id,
	Byte,
	SByte,
	Int16,
	UInt16,
	Int32,
	UInt32,
	Int64,
	UInt64,
	ByteN,
	SByteN,
	Int16N,
	UInt16N,
	Int32N,
	UInt32N,
	Int64N,
	UInt64N
)
VALUES
(1,toUInt8(0),toInt8(0),toInt16(0),toUInt16(0),0,toUInt32(0),toInt64(0),toUInt64(0),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Byte,
	x.SByte,
	x.Int16,
	x.UInt16,
	x.Int32,
	x.UInt32,
	x.Int64,
	x.UInt64,
	x.ByteN,
	x.SByteN,
	x.Int16N,
	x.UInt16N,
	x.Int32N,
	x.UInt32N,
	x.Int64N,
	x.UInt64N
FROM
	IntegerConverts x
		INNER JOIN IntegerConverts y ON x.UInt64 = y.UInt64
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IntegerConverts

