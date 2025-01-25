BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1316Tests]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1316Tests]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1316Tests]

