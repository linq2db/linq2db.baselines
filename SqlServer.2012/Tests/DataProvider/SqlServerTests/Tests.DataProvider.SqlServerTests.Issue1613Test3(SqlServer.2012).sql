BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 1, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 2, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 3, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 4, 17, 54, 55, 1231234, 0, 40, 7))

BeforeExecute
-- SqlServer.2012

SELECT
	[g_2].[TimeOfDay]
FROM
	(
		SELECT
			CAST([g_1].[dt] AS Time) as [TimeOfDay]
		FROM
			[Issue1613] [g_1]
	) [g_2]
GROUP BY
	[g_2].[TimeOfDay]

BeforeExecute
-- SqlServer.2012

SELECT DISTINCT
	CAST([r].[dt] AS Time)
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

