﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [activity649]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[activity649]', N'U') IS NULL)
	CREATE TABLE [activity649]
	(
		[activityid] Int        NOT NULL IDENTITY,
		[personid]   Int        NOT NULL,
		[added]      DateTime2  NOT NULL,

		CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[person649]', N'U') IS NULL)
	CREATE TABLE [person649]
	(
		[personid]   Int             NOT NULL IDENTITY,
		[personname] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @added DateTime2
SET     @added = DATETIME2FROMPARTS(2017, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([$VB$It].[added])
FROM
	[activity649] [$VB$It]
		INNER JOIN [person649] [a_Person] ON [$VB$It].[personid] = [a_Person].[personid]
WHERE
	[$VB$It].[added] >= @added
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [activity649]

