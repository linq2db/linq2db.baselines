﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Issue2434Table]
(
	[Id]        Int            NOT NULL,
	[FirstName] NVarChar(4000)     NULL,
	[LastName]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FirstName] + N' ' + [t1].[LastName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] + N' ' + [t1].[LastName]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue2434Table]

