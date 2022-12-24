BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [ConcurrencyTable`1]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[ConcurrencyTable`1]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyTable`1]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyTable`1] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'initial'

INSERT INTO [ConcurrencyTable`1]
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
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
FROM
	[ConcurrencyTable`1] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
FROM
	[ConcurrencyTable`1] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Value_1 NVarChar(4000) -- String
SET     @Value_1 = N'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value_1
FROM
	[ConcurrencyTable`1] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE [obj]
FROM
	[ConcurrencyTable`1] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE [obj]
FROM
	[ConcurrencyTable`1] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable`1] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [ConcurrencyTable`1]

