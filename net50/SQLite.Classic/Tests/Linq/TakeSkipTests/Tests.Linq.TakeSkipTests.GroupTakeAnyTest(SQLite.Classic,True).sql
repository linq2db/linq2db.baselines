BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
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
-- SQLite.Classic SQLite

DROP TABLE [TakeSkipClass]

