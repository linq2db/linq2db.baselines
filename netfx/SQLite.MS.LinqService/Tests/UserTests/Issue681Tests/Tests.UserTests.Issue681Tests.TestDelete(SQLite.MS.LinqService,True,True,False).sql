BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue681Table]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[main].[Issue681Table]
WHERE
	[main].[Issue681Table].[ID] = @ID

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table]

