BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4,0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = NULL
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = NULL
DECLARE @IntValue Int -- Int32
SET     @IntValue = 60
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

BeforeExecute
-- SqlCe
DECLARE @value2 Decimal(5,0)
SET     @value2 = 13621
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[SmallIntValue] = Convert(SmallInt, [LinqDataTypes].[MoneyValue] / (@value2 / Convert(Decimal(29,10), [LinqDataTypes].[IntValue])))
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP (@take) 
	[_].[SmallIntValue]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 100500

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @id

