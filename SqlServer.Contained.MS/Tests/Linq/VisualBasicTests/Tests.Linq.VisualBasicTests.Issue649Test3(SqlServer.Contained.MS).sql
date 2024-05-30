BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [activity649]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[activity649]', N'U') IS NULL)
	CREATE TABLE [activity649]
	(
		[activityid] Int        NOT NULL IDENTITY,
		[personid]   Int        NOT NULL,
		[added]      DateTime2  NOT NULL,

		CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[person649]', N'U') IS NULL)
	CREATE TABLE [person649]
	(
		[personid]   Int             NOT NULL IDENTITY,
		[personname] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= DATETIMEFROMPARTS(2017, 1, 1, 0, 0, 0, 0)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [activity649]

