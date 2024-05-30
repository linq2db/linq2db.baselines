BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1613]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

SELECT
	[g_1].[dt]
FROM
	[Issue1613] [g_1]
GROUP BY
	[g_1].[dt]

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1613]

