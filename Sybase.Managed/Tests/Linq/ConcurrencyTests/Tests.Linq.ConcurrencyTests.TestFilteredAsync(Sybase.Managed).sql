﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcurrencyFiltered]
		(
			[Id]    Int           NOT NULL,
			[Stamp] Int           NOT NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcurrencyFiltered] PRIMARY KEY CLUSTERED ([Id])
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 2 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 1 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM [ConcurrencyFiltered]
FROM
	[ConcurrencyFiltered] [r]
WHERE
	[r].[Id] = 2 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM [ConcurrencyFiltered]
FROM
	[ConcurrencyFiltered] [r]
WHERE
	[r].[Id] = 1 AND [r].[Id] = @Id AND [r].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyFiltered') IS NOT NULL)
	DROP TABLE [ConcurrencyFiltered]

