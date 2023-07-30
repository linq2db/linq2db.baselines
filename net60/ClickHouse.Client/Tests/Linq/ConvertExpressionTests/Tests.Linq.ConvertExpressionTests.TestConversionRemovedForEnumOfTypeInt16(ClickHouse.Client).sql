BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConversionsTestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConversionsTestTable
(
	SByte   Int8,
	Byte    UInt8,
	Int16   Int16,
	UInt16  UInt16,
	Int32   Int32,
	UInt32  UInt32,
	Int64   Int64,
	UInt64  UInt64,
	SByteN  Nullable(Int8),
	ByteN   Nullable(UInt8),
	Int16N  Nullable(Int16),
	UInt16N Nullable(UInt16),
	Int32N  Nullable(Int32),
	UInt32N Nullable(UInt32),
	Int64N  Nullable(Int64),
	UInt64N Nullable(UInt64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.SByte,
	x.Byte,
	x.Int16,
	x.UInt16,
	x.Int32,
	x.UInt32,
	x.Int64,
	x.UInt64,
	x.SByteN,
	x.ByteN,
	x.Int16N,
	x.UInt16N,
	x.Int32N,
	x.UInt32N,
	x.Int64N,
	x.UInt64N
FROM
	ConversionsTestTable x
WHERE
	(((((x.Byte = toUInt8(4) OR x.SByte = toInt8(4)) OR (x.Int16 = toInt16(4) OR x.UInt16 = toUInt16(4))) OR ((x.Int32 = toInt32(4) OR x.UInt32 = toUInt32(4)) OR (x.Int64 = toInt64(4) OR x.UInt64 = toUInt64(4)))) OR (((x.ByteN = toUInt8(4) OR x.SByteN = toInt8(4)) OR (x.Int16N = toInt16(4) OR x.UInt16N = toUInt16(4))) OR ((x.Int32N = toInt32(4) OR x.UInt32N = toUInt32(4)) OR (x.Int64N = toInt64(4) OR x.UInt64N = toUInt64(4))))) OR ((((toUInt8(4) = x.Byte OR toInt8(4) = x.SByte) OR (toInt16(4) = x.Int16 OR toUInt16(4) = x.UInt16)) OR ((toInt32(4) = x.Int32 OR toUInt32(4) = x.UInt32) OR (toInt64(4) = x.Int64 OR toUInt64(4) = x.UInt64))) OR (((toUInt8(4) = x.ByteN OR toInt8(4) = x.SByteN) OR (toInt16(4) = x.Int16N OR toUInt16(4) = x.UInt16N)) OR ((toInt32(4) = x.Int32N OR toUInt32(4) = x.UInt32N) OR (toInt64(4) = x.Int64N OR toUInt64(4) = x.UInt64N)))))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConversionsTestTable

