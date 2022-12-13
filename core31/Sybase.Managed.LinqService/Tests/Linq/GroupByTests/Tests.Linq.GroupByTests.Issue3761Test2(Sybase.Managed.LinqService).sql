﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3761Table]
		(
			[LETO]     Int      NOT NULL,
			[STEVILKA] Int      NOT NULL,
			[DATUM]    DateTime     NULL,
			[SKUPAJ]   Decimal      NULL,

			CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @_default DateTime
SET     @_default = '0001-01-01'
DECLARE @DATUM DateTime
SET     @DATUM = '2019-01-01'

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	Sum([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, Coalesce([n].[DATUM], @_default)) as [Year_1],
			DatePart(month, Coalesce([n].[DATUM], @_default)) as [Month_1],
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
			DatePart(year, Coalesce([n_1].[DATUM], @_default)) as [Year_1],
			DatePart(month, Coalesce([n_1].[DATUM], @_default)) as [Month_1],
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

