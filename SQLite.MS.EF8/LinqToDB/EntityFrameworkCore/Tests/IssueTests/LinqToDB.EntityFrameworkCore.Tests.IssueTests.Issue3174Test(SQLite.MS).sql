--  SQLite.MS SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[p].[Id]
FROM
	[ShadowTable] [p]
WHERE
	[p].[IsDeleted] = 0
ORDER BY
	[p].[Id]
LIMIT @take OFFSET @skip



--  SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[ShadowTable]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_ShadowTable] PRIMARY KEY ([Id])
)



--  SQLite.MS SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

INSERT INTO temp.[ShadowTable]
(
	[Id]
)
SELECT
	[p].[Id]
FROM
	[ShadowTable] [p]
WHERE
	[p].[IsDeleted] = 0
ORDER BY
	[p].[Id]
LIMIT @take OFFSET @skip



--  SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[ShadowTable]



