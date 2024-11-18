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

SELECT
	CAST('MAX' AS NVarChar(255)),
	MAX([r].[PersonID]),
	NULL
FROM
	[Person] [r]
UNION ALL
SELECT
	NULL,
	NULL,
	[r_1].[PersonID]
FROM
	[Person] [r_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3761Table]

