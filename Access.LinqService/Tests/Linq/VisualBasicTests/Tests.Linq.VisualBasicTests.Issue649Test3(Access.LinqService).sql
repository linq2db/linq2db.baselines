﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [activity649]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [person649]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [person649]
(
	[personid]   Int            NOT NULL IDENTITY,
	[personname] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON ([f].[personid] = [a_Person].[personid])
WHERE
	[f].[added] >= #2017-01-01#
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [person649]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [activity649]

