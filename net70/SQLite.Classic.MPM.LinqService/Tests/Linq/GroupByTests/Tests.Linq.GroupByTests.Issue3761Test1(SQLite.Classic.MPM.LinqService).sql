BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3761Table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3761Table]
(
	[LETO]     INTEGER   NOT NULL,
	[STEVILKA] INTEGER   NOT NULL,
	[DATUM]    DateTime2     NULL,
	[SKUPAJ]   Decimal       NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY ([LETO], [STEVILKA])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @_default  -- DateTime
SET     @_default = '0001-01-01'
DECLARE @DATUM  -- DateTime
SET     @DATUM = '2019-01-01'

SELECT
	[t1].[Key_1],
	[t1].[Key_2],
	Sum([t1].[SKUPAJ])
FROM
	(
		SELECT
			Cast(StrFTime('%Y', Coalesce([n].[DATUM], @_default)) as int) as [Key_1],
			Cast(StrFTime('%m', Coalesce([n].[DATUM], @_default)) as int) as [Key_2],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			DateTime([n].[DATUM]) < DateTime(@DATUM)
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3761Table]

