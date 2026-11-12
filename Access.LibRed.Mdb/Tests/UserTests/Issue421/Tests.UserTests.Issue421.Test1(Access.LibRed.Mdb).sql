-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BlobValue Binary(3)
SET     @BlobValue = 0x010203

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @BlobValue Binary(3)
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = @BlobValue
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

