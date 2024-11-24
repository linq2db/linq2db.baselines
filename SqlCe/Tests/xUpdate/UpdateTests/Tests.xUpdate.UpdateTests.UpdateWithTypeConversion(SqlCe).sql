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
	100,
	200
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST([LinqDataTypes].[MoneyValue] AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal(38, 17))
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes]
SET
	[SmallIntValue] = CAST([LinqDataTypes].[MoneyValue] AS SmallInt),
	[MoneyValue] = CAST([LinqDataTypes].[SmallIntValue] AS Decimal(38, 17))
WHERE
	[LinqDataTypes].[ID] = @id

BeforeExecute
-- SqlCe
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

