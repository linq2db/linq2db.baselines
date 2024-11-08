BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @ID

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @ID Integer -- Int32
SET     @ID = 2

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = @ID

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

