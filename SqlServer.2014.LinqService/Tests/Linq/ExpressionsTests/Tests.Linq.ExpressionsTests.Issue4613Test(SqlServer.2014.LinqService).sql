BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Service]', N'U') IS NOT NULL)
	DROP TABLE [Issue4613Service]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Service]', N'U') IS NULL)
	CREATE TABLE [Issue4613Service]
	(
		[IdContract] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Contract]', N'U') IS NOT NULL)
	DROP TABLE [Issue4613Contract]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Contract]', N'U') IS NULL)
	CREATE TABLE [Issue4613Contract]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON [servProj].[IdContract] = [contract].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Contract]', N'U') IS NOT NULL)
	DROP TABLE [Issue4613Contract]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue4613Service]', N'U') IS NOT NULL)
	DROP TABLE [Issue4613Service]

