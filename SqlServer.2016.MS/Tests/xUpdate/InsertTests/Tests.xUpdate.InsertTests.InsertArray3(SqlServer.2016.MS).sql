BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @arr VarBinary(8000) -- Binary
SET     @arr = 0x01020304

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BoolValue],
	[BinaryValue]
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

