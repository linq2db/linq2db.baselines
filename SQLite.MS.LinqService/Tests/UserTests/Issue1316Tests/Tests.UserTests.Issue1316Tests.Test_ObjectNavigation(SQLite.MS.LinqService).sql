BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1316Tests]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1316Tests]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5

SELECT
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Id
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1316Tests]

