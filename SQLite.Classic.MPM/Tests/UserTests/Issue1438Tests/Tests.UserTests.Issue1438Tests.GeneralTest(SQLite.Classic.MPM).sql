-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

