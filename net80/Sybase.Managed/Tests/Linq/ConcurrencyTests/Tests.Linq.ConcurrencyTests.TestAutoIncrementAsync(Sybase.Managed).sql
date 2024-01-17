﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyAutoIncrement') IS NOT NULL)
	DROP TABLE [ConcurrencyAutoIncrement]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyAutoIncrement') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcurrencyAutoIncrement]
		(
			[Id]    Int           NOT NULL,
			[Stamp] Int           NOT NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcurrencyAutoIncrement] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'initial'

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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM [ConcurrencyAutoIncrement]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -8

DELETE FROM [ConcurrencyAutoIncrement]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyAutoIncrement') IS NOT NULL)
	DROP TABLE [ConcurrencyAutoIncrement]

