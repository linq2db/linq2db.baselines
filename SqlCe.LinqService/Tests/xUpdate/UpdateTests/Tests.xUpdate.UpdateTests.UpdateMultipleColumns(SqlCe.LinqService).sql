BeforeExecute
-- SqlCe

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	1001,
	1000,
	100
)

BeforeExecute
-- SqlCe
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 2000
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 200
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = @MoneyValue,
	[SmallIntValue] = @SmallIntValue
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

SELECT TOP (2)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

