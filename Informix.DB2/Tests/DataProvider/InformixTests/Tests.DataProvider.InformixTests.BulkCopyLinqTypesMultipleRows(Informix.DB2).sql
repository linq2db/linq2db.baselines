-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4000
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1000
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0000'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {0}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 0
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 0
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 0
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '0'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4001
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1001
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0001'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {1}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 1
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '1'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4002
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1002
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0002'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {2}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 2
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 2
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '2'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4003
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1003
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0003'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {3}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 3
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 3
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 3
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '3'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4004
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1004
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0004'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {4}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 4
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 4
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 4
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '4'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4005
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1005
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0005'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {5}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 5
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 5
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 5
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '5'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4006
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1006
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0006'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {6}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 6
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 6
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 6
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '6'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4007
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1007
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0007'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {7}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 7
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 7
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 7
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '7'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4008
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1008
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0008'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {8}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 8
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 8
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 8
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '8'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4009
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1009
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp(16) -- DateTime
SET     @DateTimeValue2 = TO_DATE('2001-01-10 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '233bf399-9710-4e79-873d-2ec7bf1e0009'
DECLARE @BinaryValue VarBinary(1) -- Binary
SET     @BinaryValue = {9}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 9
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 9
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 9
DECLARE @StringValue VarChar(1) -- String
SET     @StringValue = '9'

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 4000

