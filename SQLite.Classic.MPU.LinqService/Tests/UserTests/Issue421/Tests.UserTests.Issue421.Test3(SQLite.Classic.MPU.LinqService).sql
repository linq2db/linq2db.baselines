﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [BlobClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BlobClass]
(
	[Id]        INTEGER        NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BlobValue Binary(3)
SET     @BlobValue = X'010203'

INSERT INTO [BlobClass]
(
	[Id],
	[BlobValue]
)
VALUES
(
	@Id,
	@BlobValue
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [BlobClass]

