BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BananaTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BananaTable]
(
	[Id]       INTEGER       NOT NULL,
	[Property] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Property  -- Object
SET     @Property = 'banana'
DECLARE @filter  -- Object
SET     @filter = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter AND [BananaTable].[Id] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BananaTable]

