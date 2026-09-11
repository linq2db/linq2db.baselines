-- SQLite.MS SQLite
DECLARE @Last NVarChar(8) -- String
SET     @Last = 'upd-last'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateNestedTest]
SET
	[First] = 'upd-first',
	[Last] = @Last
WHERE
	[EntityUpdateNestedTest].[Id] = @Id

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[First],
	[t1].[Last]
FROM
	[EntityUpdateNestedTest] [t1]
LIMIT 2

