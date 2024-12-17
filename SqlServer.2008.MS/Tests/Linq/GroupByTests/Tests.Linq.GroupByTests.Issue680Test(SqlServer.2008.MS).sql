BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue680Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NULL)
	CREATE TABLE [Issue680Table]
	(
		[TimeStamp] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(CASE
		WHEN [g_1].[TimeStamp] > CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
			THEN 1
		ELSE NULL
	END)
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue680Table]

