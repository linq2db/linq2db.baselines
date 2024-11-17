﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
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

