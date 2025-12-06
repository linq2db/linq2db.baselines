-- Access.Ace.OleDb AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @p Integer -- Int32
SET     @p = 1

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @p

-- Access.Ace.OleDb AccessOleDb

SELECT
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
	[t].[ID] IN (1, 2)

