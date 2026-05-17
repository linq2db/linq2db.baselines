-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
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

-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass]
SET
	[BlobValue] = @BlobValue
WHERE
	[BlobClass].[Id] = 1

-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

