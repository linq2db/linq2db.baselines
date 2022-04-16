BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1613]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.1231234 +00:40'

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-03-01 17:54:55.1231234 +00:40'

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-03-02 17:54:55.1231234 +00:40'

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-03-03 17:54:55.1231234 +00:40'

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-03-04 17:54:55.1231234 +00:40'

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[dt]
FROM
	[Issue1613] [t1]
GROUP BY
	[t1].[dt]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1613]

