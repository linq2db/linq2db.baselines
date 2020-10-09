BeforeExecute
-- SqlServer.2008

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @BlobValue VarBinary(100) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[_]
SET
	[_].[BlobValue] = @BlobValue
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2008

DROP TABLE [BlobClass]

