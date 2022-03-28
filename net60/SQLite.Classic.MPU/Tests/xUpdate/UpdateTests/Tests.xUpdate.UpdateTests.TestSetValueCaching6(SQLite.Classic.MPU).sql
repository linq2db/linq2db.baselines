﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UpdateSetTest]
(
	[Id]     INTEGER NOT NULL,
	[Value1] Guid    NOT NULL,
	[Value2] INTEGER NOT NULL,
	[Value3] INTEGER NOT NULL,
	[Value4] Guid        NULL,
	[Value5] INTEGER     NULL,
	[Value6] INTEGER     NULL,

	CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [UpdateSetTest]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4],
	[Value5],
	[Value6]
)
VALUES
(1,X'A57339BD2343D84D9F4FDF9F93E2A627',10,6,NULL,NULL,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value6  -- Int32
SET     @Value6 = 7
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value6  -- Int32
SET     @Value6 = 8
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [UpdateSetTest]

