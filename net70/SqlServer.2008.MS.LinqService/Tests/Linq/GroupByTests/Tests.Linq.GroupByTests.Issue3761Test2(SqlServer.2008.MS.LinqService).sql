BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NULL)
	CREATE TABLE [Issue3761Table]
	(
		[LETO]     Int       NOT NULL,
		[STEVILKA] Int       NOT NULL,
		[DATUM]    DateTime2     NULL,
		[SKUPAJ]   Decimal       NULL,

		CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @default DateTime2
SET     @default = CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @default_1 DateTime2
SET     @default_1 = CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @DATUM DateTime2
SET     @DATUM = CAST('2019-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @default_2 DateTime2
SET     @default_2 = CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @default_3 DateTime2
SET     @default_3 = CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	Sum([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, Coalesce([n].[DATUM], @default)) as [Year_1],
			DatePart(month, Coalesce([n].[DATUM], @default_1)) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < @DATUM
	) [t1]
GROUP BY
	[t1].[Year_1],
	[t1].[Month_1]
UNION ALL
SELECT
	[t2].[Year_1],
	[t2].[Month_1],
	Sum([t2].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, Coalesce([n_1].[DATUM], @default_2)) as [Year_1],
			DatePart(month, Coalesce([n_1].[DATUM], @default_3)) as [Month_1],
			[n_1].[SKUPAJ]
		FROM
			[Issue3761Table] [n_1]
		WHERE
			[n_1].[DATUM] >= @DATUM
	) [t2]
GROUP BY
	[t2].[Year_1],
	[t2].[Month_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

