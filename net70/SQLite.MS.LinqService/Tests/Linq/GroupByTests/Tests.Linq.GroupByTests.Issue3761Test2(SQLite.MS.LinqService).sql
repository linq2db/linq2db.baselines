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
	Cast(StrFTime('%Y', Coalesce([n].[DATUM], @_default)) as int),
	Cast(StrFTime('%m', Coalesce([n].[DATUM], @_default)) as int),
	Sum([n].[SKUPAJ])
FROM
	[Issue3761Table] [n]
WHERE
	DateTime([n].[DATUM]) < DateTime(@DATUM)
GROUP BY
	Cast(StrFTime('%Y', Coalesce([n].[DATUM], @_default)) as int),
	Cast(StrFTime('%m', Coalesce([n].[DATUM], @_default)) as int)
UNION ALL
SELECT
	Cast(StrFTime('%Y', Coalesce([n_1].[DATUM], @_default)) as int),
	Cast(StrFTime('%m', Coalesce([n_1].[DATUM], @_default)) as int),
	Sum([n_1].[SKUPAJ])
FROM
	[Issue3761Table] [n_1]
WHERE
	DateTime([n_1].[DATUM]) >= DateTime(@DATUM)
GROUP BY
	Cast(StrFTime('%Y', Coalesce([n_1].[DATUM], @_default)) as int),
	Cast(StrFTime('%m', Coalesce([n_1].[DATUM], @_default)) as int)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3761Table]

