-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshNoLock]
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

-- Access.Ace.Odbc AccessODBC
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[ConcurrencyRefreshNoLock] [obj]
SET
	[obj].[Stamp] = ?,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ?

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[Id],
	[r].[Stamp],
	[r].[Value]
FROM
	[ConcurrencyRefreshNoLock] [r]
WHERE
	[r].[Id] = 1

