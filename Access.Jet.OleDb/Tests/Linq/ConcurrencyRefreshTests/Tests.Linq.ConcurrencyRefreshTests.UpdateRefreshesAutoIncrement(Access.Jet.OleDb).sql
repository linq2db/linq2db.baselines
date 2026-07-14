-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshAutoInc]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT TOP 1
	[obj].[Stamp]
FROM
	[ConcurrencyRefreshAutoInc] [obj]
WHERE
	[obj].[Id] = @Id

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyRefreshAutoInc] [t1]

