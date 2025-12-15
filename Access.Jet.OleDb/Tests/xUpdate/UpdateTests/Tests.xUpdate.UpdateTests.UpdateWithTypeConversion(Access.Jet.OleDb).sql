-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1001

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	100,
	200
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[SmallIntValue] = [t].[MoneyValue],
	[t].[MoneyValue] = [t].[SmallIntValue]
WHERE
	[t].[ID] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[SmallIntValue] = [t].[MoneyValue],
	[t].[MoneyValue] = [t].[SmallIntValue]
WHERE
	[t].[ID] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT TOP 2
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
	[t].[ID] = @id

