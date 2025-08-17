BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1001

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	100,
	200
)

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST(Floor([LinqDataTypes].[MoneyValue]) AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal(18, 10))
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST(Floor([LinqDataTypes].[MoneyValue]) AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal(18, 10))
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

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
	[t].[ID] = @id

