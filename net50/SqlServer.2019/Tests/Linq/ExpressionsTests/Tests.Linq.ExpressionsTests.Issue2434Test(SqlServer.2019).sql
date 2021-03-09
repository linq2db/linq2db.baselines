﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue2434Table]
(
	[Id]        Int            NOT NULL,
	[FirstName] NVarChar(4000)     NULL,
	[LastName]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Issue2434Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue2434Table]

