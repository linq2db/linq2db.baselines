﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Property NVarChar(6) -- String
SET     @Property = 'banana'
DECLARE @filter  -- Int32
SET     @filter = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

