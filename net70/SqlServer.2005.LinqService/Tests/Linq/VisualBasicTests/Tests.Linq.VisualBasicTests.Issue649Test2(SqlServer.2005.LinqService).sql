BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[activity649]', N'U') IS NOT NULL)
	DROP TABLE [activity649]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[activity649]', N'U') IS NULL)
	CREATE TABLE [activity649]
	(
		[activityid] Int       NOT NULL IDENTITY,
		[personid]   Int       NOT NULL,
		[added]      DateTime  NOT NULL,

		CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[person649]', N'U') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[person649]', N'U') IS NULL)
	CREATE TABLE [person649]
	(
		[personid]   Int             NOT NULL IDENTITY,
		[personname] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @added DateTime
SET     @added = CAST('2017-01-01T00:00:00.000' AS DATETIME)

SELECT
	[$VB$It].[c1],
	[$VB$It].[c2],
	Max([$VB$It].[added])
FROM
	(
		SELECT
			[a_Person].[personid] as [c1],
			[a_Person].[personname] as [c2],
			[p].[added]
		FROM
			[activity649] [p]
				INNER JOIN [person649] [a_Person] ON [p].[personid] = [a_Person].[personid]
		WHERE
			[p].[added] >= @added
	) [$VB$It]
GROUP BY
	[$VB$It].[c1],
	[$VB$It].[c2]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[person649]', N'U') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[activity649]', N'U') IS NOT NULL)
	DROP TABLE [activity649]

