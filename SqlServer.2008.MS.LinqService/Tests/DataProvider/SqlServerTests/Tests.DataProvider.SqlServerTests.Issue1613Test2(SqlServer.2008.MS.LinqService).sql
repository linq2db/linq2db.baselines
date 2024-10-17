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
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-03-01T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-03-02T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-03-03T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-03-04T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(
	@DateTimeOffset
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CAST([g_1].[dt] AS Date) as [Key_1]
		FROM
			[Issue1613] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST([r].[dt] AS Date)
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

