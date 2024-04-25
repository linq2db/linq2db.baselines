BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[activity649]', N'U') IS NOT NULL)
	DROP TABLE [activity649]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[activity649]', N'U') IS NULL)
	CREATE TABLE [activity649]
	(
		[activityid] Int        NOT NULL IDENTITY,
		[personid]   Int        NOT NULL,
		[added]      DateTime2  NOT NULL,

		CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[person649]', N'U') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[person649]', N'U') IS NULL)
	CREATE TABLE [person649]
	(
		[personid]   Int             NOT NULL IDENTITY,
		[personname] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
	)

BeforeExecute
-- SqlServer.2008

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([VBIt].[added])
FROM
	[activity649] [VBIt]
		INNER JOIN [person649] [a_Person] ON [VBIt].[personid] = [a_Person].[personid]
WHERE
	[VBIt].[added] >= CAST(N'2017-01-01' AS DateTime2)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[person649]', N'U') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[activity649]', N'U') IS NOT NULL)
	DROP TABLE [activity649]

