BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DisTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[DisTable]', N'U') IS NULL)
	CREATE TABLE [DisTable]
	(
		[DisTypeID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [JurTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[JurTable]', N'U') IS NULL)
	CREATE TABLE [JurTable]
	(
		[JurCode] NVarChar(2) NOT NULL,

		CONSTRAINT [PK_JurTable] PRIMARY KEY CLUSTERED ([JurCode])
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DisTypeTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[DisTypeTable]', N'U') IS NULL)
	CREATE TABLE [DisTypeTable]
	(
		[DisTypeID] Int          NOT NULL,
		[JurCode]   NVarChar(50) NOT NULL,

		CONSTRAINT [PK_DisTypeTable] PRIMARY KEY CLUSTERED ([DisTypeID])
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[d].[DisTypeID]
FROM
	[DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END = [a_DisType].[DisTypeID] AND CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END IS NOT NULL
		INNER JOIN [JurTable] [j] ON [a_DisType].[JurCode] = [j].[JurCode]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DisTypeTable]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [JurTable]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DisTable]

