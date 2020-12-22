BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue1192Table]
(
	[IdId]      INTEGER NOT NULL,
	[MyOtherId] INTEGER NOT NULL,
	[Status]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Issue1192Table] [t]
		WHERE
			[t1].[c1] = 1 AND [t].[Status] = 3 AND [t].[MyOtherId] = 12
	)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Issue1192Table] [t_1]
		WHERE
			[t_1].[MyOtherId] = 12
	) [t1]
GROUP BY
	[t1].[c1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [Issue1192Table]

