BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @dt DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	[LinqDataTypes]
SET
	[t1].[DateTimeValue] = @dt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @pdt DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	[LinqDataTypes]
SET
	[t1].[DateTimeValue] = @pdt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

