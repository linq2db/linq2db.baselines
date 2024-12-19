BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Client]', N'U') IS NOT NULL)
	DROP TABLE [Issue4454Client]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Client]', N'U') IS NULL)
	CREATE TABLE [Issue4454Client]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Service]', N'U') IS NOT NULL)
	DROP TABLE [Issue4454Service]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Service]', N'U') IS NULL)
	CREATE TABLE [Issue4454Service]
	(
		[Id]       Int NOT NULL,
		[IdClient] Int     NULL
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[a_Client1].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client1] ON [s].[IdClient] = [a_Client1].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Service]', N'U') IS NOT NULL)
	DROP TABLE [Issue4454Service]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4454Client]', N'U') IS NOT NULL)
	DROP TABLE [Issue4454Client]

