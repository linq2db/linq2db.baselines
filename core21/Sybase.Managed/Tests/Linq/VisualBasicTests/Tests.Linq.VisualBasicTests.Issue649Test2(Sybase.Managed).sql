﻿BeforeExecute
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
	Max([p].[added])
FROM
	[activity649] [p]
		INNER JOIN [person649] [a_Person] ON [p].[personid] = [a_Person].[personid]
WHERE
	[p].[added] >= @added
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'person649') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'activity649') IS NOT NULL)
	DROP TABLE [activity649]

