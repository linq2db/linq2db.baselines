﻿BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016
DECLARE @dt DateTime2
SET     @dt = '2010-12-14T05:00:07.4250141'

UPDATE
	[t1]
SET
	[t1].[DateTimeValue2] = @dt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016
DECLARE @pdt DateTime2
SET     @pdt = NULL

UPDATE
	[t1]
SET
	[t1].[DateTimeValue2] = @pdt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

