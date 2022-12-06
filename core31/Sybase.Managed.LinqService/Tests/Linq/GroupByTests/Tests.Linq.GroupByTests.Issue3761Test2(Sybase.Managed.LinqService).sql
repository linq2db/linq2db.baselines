BeforeExecute
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
	[t2].[Year_1],
	[t2].[Month_1],
	[t2].[Sum_1]
FROM
	(
		SELECT
			[t1].[Year_1],
			[t1].[Month_1],
			Sum([t1].[SKUPAJ]) as [Sum_1]
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
	) [t2]
UNION ALL
SELECT
	[t4].[Year_1],
	[t4].[Month_1],
	[t4].[Sum_1]
FROM
	(
		SELECT
			[t3].[Year_1],
			[t3].[Month_1],
			Sum([t3].[SKUPAJ]) as [Sum_1]
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
			) [t3]
		GROUP BY
			[t3].[Year_1],
			[t3].[Month_1]
	) [t4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

