BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue680Table]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NULL)
	CREATE TABLE [Issue680Table]
	(
		[TimeStamp] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @DateTime DateTime2
SET     @DateTime = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	COUNT(IIF([g_1].[TimeStamp] > @DateTime, 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue680Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue680Table]

