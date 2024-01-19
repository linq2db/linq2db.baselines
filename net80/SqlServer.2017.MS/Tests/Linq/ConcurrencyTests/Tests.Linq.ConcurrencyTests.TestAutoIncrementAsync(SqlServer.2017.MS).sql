﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ConcurrencyAutoIncrement]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[ConcurrencyAutoIncrement]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyAutoIncrement]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyAutoIncrement] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'initial'

INSERT INTO [ConcurrencyAutoIncrement]
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

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE [obj]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE [obj]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ConcurrencyAutoIncrement]

