-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyAutoIncrement]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyAutoIncrement] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

