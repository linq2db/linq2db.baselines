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
DECLARE @Item1  -- Int32
SET     @Item1 = 5

SELECT
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Item1
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1316Tests]

