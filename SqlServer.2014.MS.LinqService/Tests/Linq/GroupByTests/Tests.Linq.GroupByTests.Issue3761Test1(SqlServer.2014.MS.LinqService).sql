﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	SUM([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, IIF([n].[DATUM] IS NOT NULL, [n].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Year_1],
			DatePart(month, IIF([n].[DATUM] IS NOT NULL, [n].[DATUM], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < DATETIME2FROMPARTS(2019, 1, 1, 0, 0, 0, 0, 7)
	) [t1]
GROUP BY
	[t1].[Year_1],
	[t1].[Month_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

