BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue1613]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
('2020-02-29 17:54:55.1231234 +00:40'),
('2020-03-01 17:54:55.1231234 +00:40'),
('2020-03-02 17:54:55.1231234 +00:40'),
('2020-03-03 17:54:55.1231234 +00:40'),
('2020-03-04 17:54:55.1231234 +00:40')

BeforeExecute
-- SqlServer.Contained SqlServer.2017

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
-- SqlServer.Contained SqlServer.2017

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue1613]

