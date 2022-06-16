BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1192Table]
(
	[IdId]      INTEGER NOT NULL,
	[MyOtherId] INTEGER NOT NULL,
	[Status]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Issue1192Table] [t]
		WHERE
			[t].[Status] = 3 AND [t].[MyOtherId] = 12
	)
FROM
	[Issue1192Table] [t_1]
WHERE
	[t_1].[MyOtherId] = 12
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1192Table]

