-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb
DECLARE @dt Date -- DateTime
SET     @dt = #2010-12-14 05:00:07#

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[DateTimeValue] = @dt
WHERE
	[t].[ID] = 1

-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb
DECLARE @pdt Date -- DateTime
SET     @pdt = #2001-01-11 01:11:21#

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[DateTimeValue] = @pdt
WHERE
	[t].[ID] = 1

