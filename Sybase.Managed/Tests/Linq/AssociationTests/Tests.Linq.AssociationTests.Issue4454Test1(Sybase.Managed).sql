﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Client') IS NOT NULL)
	DROP TABLE [Issue4454Client]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Client') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4454Client]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Service') IS NOT NULL)
	DROP TABLE [Issue4454Service]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Service') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4454Service]
		(
			[Id]       Int NOT NULL,
			[IdClient] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_Client1].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client1] ON [s].[IdClient] = [a_Client1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Service') IS NOT NULL)
	DROP TABLE [Issue4454Service]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4454Client') IS NOT NULL)
	DROP TABLE [Issue4454Client]

