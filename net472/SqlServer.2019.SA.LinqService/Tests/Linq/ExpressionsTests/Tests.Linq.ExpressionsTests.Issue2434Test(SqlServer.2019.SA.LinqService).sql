BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [Issue2434Table]
(
	[Id]        Int            NOT NULL,
	[FirstName] NVarChar(4000)     NULL,
	[LastName]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

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
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue2434Table]

