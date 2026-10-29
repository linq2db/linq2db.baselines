-- SQLite.MS SQLite
INSERT INTO [BananaTable]
(
	[Id],
	[Property]
)
VALUES
(
	1,
	'test1'
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

-- SQLite.MS SQLite
DECLARE @Property Text(6) -- Object
SET     @Property = 'banana'
DECLARE @filter Integer -- Object
SET     @filter = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

