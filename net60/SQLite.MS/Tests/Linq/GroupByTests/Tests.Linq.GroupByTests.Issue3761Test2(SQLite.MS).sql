BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3761Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3761Table]
(
	[LETO]     INTEGER   NOT NULL,
	[STEVILKA] INTEGER   NOT NULL,
	[DATUM]    DateTime2     NULL,
	[SKUPAJ]   Decimal       NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY ([LETO], [STEVILKA])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @_default  -- DateTime
SET     @_default = '0001-01-01'
DECLARE @DATUM  -- DateTime
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
					Cast(StrFTime('%Y', Coalesce([n].[DATUM], @_default)) as int) as [Year_1],
					Cast(StrFTime('%m', Coalesce([n].[DATUM], @_default)) as int) as [Month_1],
					[n].[SKUPAJ]
				FROM
					[Issue3761Table] [n]
				WHERE
					DateTime([n].[DATUM]) < DateTime(@DATUM)
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
					Cast(StrFTime('%Y', Coalesce([n_1].[DATUM], @_default)) as int) as [Year_1],
					Cast(StrFTime('%m', Coalesce([n_1].[DATUM], @_default)) as int) as [Month_1],
					[n_1].[SKUPAJ]
				FROM
					[Issue3761Table] [n_1]
				WHERE
					DateTime([n_1].[DATUM]) >= DateTime(@DATUM)
			) [t3]
		GROUP BY
			[t3].[Year_1],
			[t3].[Month_1]
	) [t4]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3761Table]

