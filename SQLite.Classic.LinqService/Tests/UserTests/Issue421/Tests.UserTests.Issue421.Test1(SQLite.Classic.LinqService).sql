BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @BlobValue Binary(3)
SET     @BlobValue = X'030201'

UPDATE
	[BlobClass]
SET
	[BlobValue] = @BlobValue
WHERE
	[BlobClass].[Id] = 1

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

