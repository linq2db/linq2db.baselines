BeforeExecute
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
DECLARE @added Date -- DateTime
SET     @added = #2017-01-01#

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
				INNER JOIN [person649] [a_Person] ON ([p].[personid] = [a_Person].[personid])
		WHERE
			[p].[added] >= @added
	) [$VB$It]
GROUP BY
	[$VB$It].[c1],
	[$VB$It].[c2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [person649]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [activity649]

