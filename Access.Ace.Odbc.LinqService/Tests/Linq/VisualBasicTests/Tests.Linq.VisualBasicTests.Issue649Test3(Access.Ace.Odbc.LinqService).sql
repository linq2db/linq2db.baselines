BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [activity649]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [person649]
(
	[personid]   Int            NOT NULL IDENTITY,
	[personname] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON ([f].[personid] = [a_Person].[personid])
WHERE
	[f].[added] >= DateSerial(2017, 1, 1)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [activity649]

