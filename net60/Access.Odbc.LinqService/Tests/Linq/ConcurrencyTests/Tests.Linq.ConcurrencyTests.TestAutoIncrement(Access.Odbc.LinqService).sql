BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ConcurrencyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ConcurrencyTable]
(
	[Id]    Int           NOT NULL,
	[Stamp] Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO [ConcurrencyTable]
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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyTable] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyTable] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ConcurrencyTable]

