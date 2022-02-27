BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1316Tests]
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
DECLARE @ID_1  -- Int32
SET     @ID_1 = 5
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @ID_1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id_1  -- Int32
SET     @Id_1 = 5
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Id_1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1316Tests]

