BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1613]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			CAST([selectParam].[dt] AS TIME) as [Key_1]
		FROM
			[Issue1613] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2016

SELECT DISTINCT
	CAST([r].[dt] AS TIME)
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1613]

