﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BananaTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [BananaTable]
(
	[Id]       INTEGER       NOT NULL,
	[Property] NVarChar(255)     NULL
)

BeforeExecute
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

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Property  -- Object
SET     @Property = 'banana'
DECLARE @filter_1  -- Object
SET     @filter_1 = 1

UPDATE
	[BananaTable]
SET
	[Property] = @Property
WHERE
	[BananaTable].[Id] = @filter_1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Property]
FROM
	[BananaTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BananaTable]

