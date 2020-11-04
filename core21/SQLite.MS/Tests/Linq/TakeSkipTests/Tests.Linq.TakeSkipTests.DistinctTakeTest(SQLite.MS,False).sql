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

SELECT DISTINCT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
LIMIT 3

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

