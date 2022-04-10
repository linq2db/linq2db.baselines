﻿BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
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
-- Access AccessOleDb
DECLARE @dt Date -- DateTime
SET     @dt = #2010-12-14 05:00:07#

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[DateTimeValue] = @dt
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
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
-- Access AccessOleDb
DECLARE @pdt Date -- DateTime
SET     @pdt = #2001-01-11 01:11:21#

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[DateTimeValue] = @pdt
WHERE
	[t1].[ID] = 1

