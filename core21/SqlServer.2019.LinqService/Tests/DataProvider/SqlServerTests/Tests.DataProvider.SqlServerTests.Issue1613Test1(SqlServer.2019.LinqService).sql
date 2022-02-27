BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue1613]
(
	[dt] DateTimeOffset     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[dt]
FROM
	[Issue1613] [t1]
GROUP BY
	[t1].[dt]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Issue1613]

