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
('2020-02-29 17:54:55.1231234 +00:40'),
('2020-03-01 17:54:55.1231234 +00:40'),
('2020-03-02 17:54:55.1231234 +00:40'),
('2020-03-03 17:54:55.1231234 +00:40'),
('2020-03-04 17:54:55.1231234 +00:40')

BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, [selectParam].[dt])
FROM
	[Issue1613] [selectParam]
GROUP BY
	Convert(Date, [selectParam].[dt])

BeforeExecute
-- SqlServer.2016

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1613]

