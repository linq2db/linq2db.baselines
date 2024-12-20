﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Customer') IS NOT NULL)
	DROP TABLE [Issue4654Customer]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Customer') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4654Customer]
		(
			[Id]   Int           IDENTITY NOT NULL,
			[Name] NVarChar(255)              NULL,

			CONSTRAINT [PK_Issue4654Customer] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Order') IS NOT NULL)
	DROP TABLE [Issue4654Order]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Order') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4654Order]
		(
			[Id]          Int           IDENTITY NOT NULL,
			[ProductName] NVarChar(255)              NULL,
			[Quantity]    Int                    NOT NULL,
			[CustomerId]  Int                    NOT NULL,

			CONSTRAINT [PK_Issue4654Order] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Product') IS NOT NULL)
	DROP TABLE [Issue4654Product]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Product') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4654Product]
		(
			[Id]    Int           IDENTITY NOT NULL,
			[Name]  NVarChar(255)              NULL,
			[Price] DECIMAL                NOT NULL,

			CONSTRAINT [PK_Issue4654Product] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST([c_1].[Id] AS NVarChar(5461)),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(5461)),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(5461)),
	[p].[Name]
FROM
	[Issue4654Product] [p]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Product') IS NOT NULL)
	DROP TABLE [Issue4654Product]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Order') IS NOT NULL)
	DROP TABLE [Issue4654Order]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4654Customer') IS NOT NULL)
	DROP TABLE [Issue4654Customer]

