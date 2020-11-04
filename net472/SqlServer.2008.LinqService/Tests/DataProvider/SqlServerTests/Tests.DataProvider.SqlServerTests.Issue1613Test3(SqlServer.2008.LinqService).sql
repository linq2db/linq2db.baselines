BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			CAST([selectParam].[dt] AS TIME) as [c1]
		FROM
			[Issue1613] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- SqlServer.2008

SELECT DISTINCT
	CAST([r].[dt] AS TIME)
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

