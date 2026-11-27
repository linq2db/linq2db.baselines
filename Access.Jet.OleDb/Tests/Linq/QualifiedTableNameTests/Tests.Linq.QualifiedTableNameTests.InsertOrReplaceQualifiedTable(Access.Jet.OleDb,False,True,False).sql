-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Database\TestData].[QualifiedNameTable] [t1]
SET
	[t1].[Value] = @Value
WHERE
	[t1].[ID] = @ID

-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData].[QualifiedNameTable]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Database\TestData].[QualifiedNameTable] [t1]
SET
	[t1].[Value] = @Value
WHERE
	[t1].[ID] = @ID

