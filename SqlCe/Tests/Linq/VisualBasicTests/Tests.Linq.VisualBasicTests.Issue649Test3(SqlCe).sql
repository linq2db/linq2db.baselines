﻿BeforeExecute
-- SqlCe

DROP TABLE [activity649]

BeforeExecute
-- SqlCe

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY ([activityid])
)

BeforeExecute
-- SqlCe

DROP TABLE [person649]

BeforeExecute
-- SqlCe

CREATE TABLE [person649]
(
	[personid]   Int            NOT NULL IDENTITY,
	[personname] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY ([personid])
)

BeforeExecute
-- SqlCe
DECLARE @added DateTime
SET     @added = '2017-01-01'

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
-- SqlCe

DROP TABLE [person649]

BeforeExecute
-- SqlCe

DROP TABLE [activity649]

