BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				[group_1].[Value]
			FROM
				[TakeSkipClass] [group_1]
			GROUP BY
				[group_1].[Value]
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

