BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						Count(*) as [Count_1]
					FROM
						[TakeSkipClass] [group_1]
					GROUP BY
						[group_1].[Value]
				) [group_2]
			WHERE
				[group_2].[Count_1] > 1
			LIMIT 1
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

