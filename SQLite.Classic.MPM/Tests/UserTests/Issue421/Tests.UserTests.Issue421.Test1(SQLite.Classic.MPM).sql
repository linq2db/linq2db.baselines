-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BlobValue Binary(3)
SET     @BlobValue = X'030201'

UPDATE
	[BlobClass]
SET
	[BlobValue] = @BlobValue
WHERE
	[BlobClass].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

