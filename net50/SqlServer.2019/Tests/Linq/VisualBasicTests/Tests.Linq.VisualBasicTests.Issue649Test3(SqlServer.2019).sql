﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [person649]
(
	[personid]   Int             NOT NULL IDENTITY,
	[personname] NVarChar(4000)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @added DateTime2
SET     @added = '2017-01-01T00:00:00.0000000'

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	[f].[added] >= @added
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [activity649]

