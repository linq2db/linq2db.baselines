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
DECLARE @_default DateTime2
SET     @_default = CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @DATUM DateTime2
SET     @DATUM = CAST('2019-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Key_1],
	[t1].[Key_2],
	Sum([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, Coalesce([n].[DATUM], @_default)) as [Key_1],
			DatePart(month, Coalesce([n].[DATUM], @_default)) as [Key_2],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < @DATUM
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

