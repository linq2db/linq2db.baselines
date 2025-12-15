-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(100) -- Binary
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

-- SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- SqlServer.2017
DECLARE @BlobValue VarBinary(100) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass]
SET
	[BlobValue] = @BlobValue
WHERE
	[BlobClass].[Id] = 1

-- SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

