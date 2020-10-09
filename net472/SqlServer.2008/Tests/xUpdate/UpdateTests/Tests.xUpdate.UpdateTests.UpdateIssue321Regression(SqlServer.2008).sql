BeforeExecute
-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 100500
DECLARE @MoneyValue Decimal(4,0)
SET     @MoneyValue = 3000
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = NULL
DECLARE @DateTimeValue2 DateTime2
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
DECLARE @StringValue NVarChar(4000) -- String
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
-- SqlServer.2008
DECLARE @value2 Decimal(5,0)
SET     @value2 = 13621
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[t1]
SET
	[t1].[SmallIntValue] = Convert(SmallInt, [t1].[MoneyValue] / (@value2 / Convert(Decimal(29,10), [t1].[IntValue])))
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @id

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 100500

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @id

