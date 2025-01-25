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
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = 2000,
	[SmallIntValue] = 200
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

