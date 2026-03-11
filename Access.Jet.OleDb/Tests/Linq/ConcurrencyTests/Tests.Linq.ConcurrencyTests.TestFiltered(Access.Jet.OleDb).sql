-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyFiltered]
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

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered] [r]
SET
	[r].[Stamp] = [r].[Stamp] + 1,
	[r].[Value] = @Value
WHERE
	[r].[Id] = 2 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered] [r]
SET
	[r].[Stamp] = [r].[Stamp] + 1,
	[r].[Value] = @Value
WHERE
	[r].[Id] = 1 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered] [r]
WHERE
	[r].[Id] = 2 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered] [r]
WHERE
	[r].[Id] = 1 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

