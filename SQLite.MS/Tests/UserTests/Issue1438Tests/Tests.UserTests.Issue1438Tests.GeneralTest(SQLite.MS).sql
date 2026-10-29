-- SQLite.MS SQLite
DECLARE @Has Integer -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

-- SQLite.MS SQLite
SELECT last_insert_rowid()

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

