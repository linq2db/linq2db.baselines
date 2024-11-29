BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [activity649]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [person649]
(
	[personid]   Int            NOT NULL IDENTITY,
	[personname] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([VBIt].[added])
FROM
	[activity649] [VBIt]
		INNER JOIN [person649] [a_Person] ON ([VBIt].[personid] = [a_Person].[personid])
WHERE
	[VBIt].[added] >= DateSerial(2017, 1, 1)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [person649]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [activity649]

