BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [TakeSkipClass]
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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [TakeSkipClass]

