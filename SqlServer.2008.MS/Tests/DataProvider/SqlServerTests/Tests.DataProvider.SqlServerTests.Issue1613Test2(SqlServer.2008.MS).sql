BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-01T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-02T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-03T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-04T17:54:55.1231234+00:40' AS DATETIMEOFFSET))

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			Convert(Date, [selectParam].[dt]) as [Key_1]
		FROM
			[Issue1613] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

