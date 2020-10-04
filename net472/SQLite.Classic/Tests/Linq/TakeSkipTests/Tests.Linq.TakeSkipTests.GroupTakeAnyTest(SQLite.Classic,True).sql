﻿BeforeExecute
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
	EXISTS(
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

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TakeSkipClass]

