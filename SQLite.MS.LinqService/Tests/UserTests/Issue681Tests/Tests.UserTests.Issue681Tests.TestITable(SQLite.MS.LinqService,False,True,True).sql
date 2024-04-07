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

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[main].[Issue681Table] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue681Table]

