BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [BananaTable]
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
DECLARE @Property NVarChar(6) -- String
SET     @Property = 'banana'
DECLARE @filter_1  -- Int32
SET     @filter_1 = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter_1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [BananaTable]

