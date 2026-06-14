-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Last NVarChar(9) -- String
SET     @Last = 'seed-last'

INSERT INTO [EntityInsertNestedTest]
(
	[Id],
	[First],
	[Last]
)
VALUES
(
	@Id,
	'set-first',
	@Last
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[First],
	[t1].[Last]
FROM
	[EntityInsertNestedTest] [t1]
LIMIT 2

