BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1192Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1192Table]
(
	[IdId]      INTEGER NOT NULL,
	[MyOtherId] INTEGER NOT NULL,
	[Status]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1192Table] [t]
WHERE
	[t].[MyOtherId] = 12
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1192Table]

