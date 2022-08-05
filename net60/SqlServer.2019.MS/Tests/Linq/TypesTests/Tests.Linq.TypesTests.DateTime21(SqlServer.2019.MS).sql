﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @dt DateTime
SET     @dt = DATETIME2FROMPARTS(2010, 12, 14, 5, 0, 7, 4250141, 7)

UPDATE
	[t1]
SET
	[t1].[DateTimeValue] = @dt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @pdt DateTime
SET     @pdt = DATETIME2FROMPARTS(2001, 1, 11, 1, 11, 21, 1000000, 7)

UPDATE
	[t1]
SET
	[t1].[DateTimeValue] = @pdt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

