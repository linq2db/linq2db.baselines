BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1438]
(
	[Id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Has] Bit      NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Has  -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id_1  -- Int32
SET     @id_1 = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id_1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1438]

