BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Issue1438]
(
	[Id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Has] Bit      NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Issue1438]

