BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	t1.ID, 
	t1.MoneyValue, 
	t1.DateTimeValue, 
	t1.DateTimeValue2, 
	t1.BoolValue, 
	t1.GuidValue, 
	t1.SmallIntValue, 
	t1.IntValue, 
	t1.BigIntValue, 
	t1.StringValue
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.MoneyValue = @MoneyValue,
	LinqDataTypes.DateTimeValue = @DateTimeValue,
	LinqDataTypes.DateTimeValue2 = @DateTimeValue2,
	LinqDataTypes.BoolValue = @BoolValue,
	LinqDataTypes.GuidValue = @GuidValue,
	LinqDataTypes.SmallIntValue = @SmallIntValue,
	LinqDataTypes.IntValue = @IntValue,
	LinqDataTypes.BigIntValue = @BigIntValue,
	LinqDataTypes.StringValue = @StringValue
WHERE
	LinqDataTypes.ID = @ID

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	t1.ID, 
	t1.MoneyValue, 
	t1.DateTimeValue, 
	t1.DateTimeValue2, 
	t1.BoolValue, 
	t1.GuidValue, 
	t1.SmallIntValue, 
	t1.IntValue, 
	t1.BigIntValue, 
	t1.StringValue
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Timestamp(16) -- DateTime
SET     @DateTimeValue = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @DateTimeValue2 Timestamp -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt(8) -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.MoneyValue = @MoneyValue,
	LinqDataTypes.DateTimeValue = @DateTimeValue,
	LinqDataTypes.DateTimeValue2 = @DateTimeValue2,
	LinqDataTypes.BoolValue = @BoolValue,
	LinqDataTypes.GuidValue = @GuidValue,
	LinqDataTypes.SmallIntValue = @SmallIntValue,
	LinqDataTypes.IntValue = @IntValue,
	LinqDataTypes.BigIntValue = @BigIntValue,
	LinqDataTypes.StringValue = @StringValue
WHERE
	LinqDataTypes.ID = @ID

