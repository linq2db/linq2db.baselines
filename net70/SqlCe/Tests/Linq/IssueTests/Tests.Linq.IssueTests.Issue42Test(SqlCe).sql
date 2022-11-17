BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

BeforeExecute
-- SqlCe
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[MoneyValue] = @MoneyValue,
	[LinqDataTypes].[DateTimeValue] = @DateTimeValue,
	[LinqDataTypes].[DateTimeValue2] = @DateTimeValue2,
	[LinqDataTypes].[BoolValue] = @BoolValue,
	[LinqDataTypes].[GuidValue] = @GuidValue,
	[LinqDataTypes].[SmallIntValue] = @SmallIntValue,
	[LinqDataTypes].[IntValue] = @IntValue,
	[LinqDataTypes].[BigIntValue] = @BigIntValue,
	[LinqDataTypes].[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (@take)
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2001-01-11 01:11:21.100'
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[MoneyValue] = @MoneyValue,
	[LinqDataTypes].[DateTimeValue] = @DateTimeValue,
	[LinqDataTypes].[DateTimeValue2] = @DateTimeValue2,
	[LinqDataTypes].[BoolValue] = @BoolValue,
	[LinqDataTypes].[GuidValue] = @GuidValue,
	[LinqDataTypes].[SmallIntValue] = @SmallIntValue,
	[LinqDataTypes].[IntValue] = @IntValue,
	[LinqDataTypes].[BigIntValue] = @BigIntValue,
	[LinqDataTypes].[StringValue] = @StringValue
WHERE
	[LinqDataTypes].[ID] = @ID

