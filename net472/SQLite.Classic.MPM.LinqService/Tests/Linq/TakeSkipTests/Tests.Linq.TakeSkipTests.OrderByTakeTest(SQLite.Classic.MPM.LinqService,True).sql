BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

