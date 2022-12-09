﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'activity649') IS NOT NULL)
	DROP TABLE [activity649]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'activity649') IS NULL)
	EXECUTE('
		CREATE TABLE [activity649]
		(
			[activityid] Int      IDENTITY NOT NULL,
			[personid]   Int               NOT NULL,
			[added]      DateTime          NOT NULL,

			CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'person649') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'person649') IS NULL)
	EXECUTE('
		CREATE TABLE [person649]
		(
			[personid]   Int           IDENTITY NOT NULL,
			[personname] NVarChar(255)          NOT NULL,

			CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @added DateTime
SET     @added = '2017-01-01'

SELECT
	[t1].[c1],
	[t1].[c2],
	Max([t1].[added])
FROM
	(
		SELECT
			[a_Person].[personid] as [c1],
			[a_Person].[personname] as [c2],
			[f].[added]
		FROM
			[activity649] [f]
				INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
		WHERE
			[f].[added] >= @added
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'person649') IS NOT NULL)
	DROP TABLE [person649]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'activity649') IS NOT NULL)
	DROP TABLE [activity649]

