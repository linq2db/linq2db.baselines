BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @arr VarBinary(8000) -- Binary
SET     @arr = NULL

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
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

