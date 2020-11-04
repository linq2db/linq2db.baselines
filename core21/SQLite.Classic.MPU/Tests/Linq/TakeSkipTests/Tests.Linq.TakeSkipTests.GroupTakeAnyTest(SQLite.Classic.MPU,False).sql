BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
		LIMIT 1
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

