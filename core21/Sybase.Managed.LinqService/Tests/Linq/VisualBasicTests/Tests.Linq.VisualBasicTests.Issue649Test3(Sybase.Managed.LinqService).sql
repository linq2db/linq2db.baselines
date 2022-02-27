BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [activity649]
(
	[activityid] Int      IDENTITY NOT NULL,
	[personid]   Int               NOT NULL,
	[added]      DateTime          NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [person649]
(
	[personid]   Int           IDENTITY NOT NULL,
	[personname] NVarChar(255)          NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase

DROP TABLE [person649]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [activity649]

