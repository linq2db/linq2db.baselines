BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue680Table]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NULL)
	CREATE TABLE [Issue680Table]
	(
		[TimeStamp] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(IIF([g_1].[TimeStamp] > DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7), 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue680Table]

