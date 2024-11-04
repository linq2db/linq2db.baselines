BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0102030405
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = ?
WHERE
	[t].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = 0x0504030201
DECLARE @ID  -- Int32
SET     @ID = 2

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = ?
WHERE
	[t].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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

