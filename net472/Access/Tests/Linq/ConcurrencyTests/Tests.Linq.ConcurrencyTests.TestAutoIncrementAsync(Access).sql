BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConcurrencyTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ConcurrencyTable]
(
	[Id]    Int           NOT NULL,
	[Stamp] Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarWChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO [ConcurrencyTable]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Value_1 VarWChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Value_1 VarWChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Value_1 VarWChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyTable] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyTable] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConcurrencyTable]

