BeforeExecute
-- SQLite.MS SQLite (asynchronously)

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

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Property  -- Object
SET     @Property = 'banana'
DECLARE @filter  -- Object
SET     @filter = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

