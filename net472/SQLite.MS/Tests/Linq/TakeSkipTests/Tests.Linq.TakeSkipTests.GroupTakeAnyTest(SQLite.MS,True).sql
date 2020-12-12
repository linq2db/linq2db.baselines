BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TakeSkipClass]
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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				[t1].[Value]
			FROM
				[TakeSkipClass] [t1]
			GROUP BY
				[t1].[Value]
			HAVING
				Count(*) > 1
			LIMIT @take
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TakeSkipClass]

