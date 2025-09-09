BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @arr VarBinary(4) -- Binary
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
	True,
	@arr
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 2
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

