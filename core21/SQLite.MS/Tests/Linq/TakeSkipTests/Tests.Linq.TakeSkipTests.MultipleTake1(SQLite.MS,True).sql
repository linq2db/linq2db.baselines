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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take_1  -- Int32
SET     @take_1 = 2

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT @take_1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

