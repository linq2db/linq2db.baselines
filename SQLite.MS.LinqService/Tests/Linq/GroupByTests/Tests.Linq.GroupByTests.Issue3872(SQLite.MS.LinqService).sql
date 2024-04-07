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
	Max([selectParam].[PersonID])
FROM
	[Person] [selectParam]
UNION ALL
SELECT
	[r].[PersonID]
FROM
	[Person] [r]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3761Table]

