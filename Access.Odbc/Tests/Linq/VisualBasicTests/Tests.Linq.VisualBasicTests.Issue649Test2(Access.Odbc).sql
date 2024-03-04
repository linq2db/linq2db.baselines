BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [activity649]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [person649]
(
	[personid]   Int            NOT NULL IDENTITY,
	[personname] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([$VB$It].[added])
FROM
	[activity649] [$VB$It]
		INNER JOIN [person649] [a_Person] ON ([$VB$It].[personid] = [a_Person].[personid])
WHERE
	[$VB$It].[added] >= #2017-01-01#
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [activity649]

