BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[p$_.@#p] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_p  -- Int32
SET     @p_p = 2

UPDATE
	[testparams]
SET
	[p$_.@#p] = @p_p
WHERE
	[testparams].[p$_.@#p] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

