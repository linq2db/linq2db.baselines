BeforeExecute
-- SqlCe

DROP TABLE [BlobClass]

BeforeExecute
-- SqlCe

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VARBINARY(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [BlobClass]
(
	[Id],
	[BlobValue]
)
VALUES
(
	1,
	0x010203
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlCe
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass]
SET
	[BlobValue] = @BlobValue
WHERE
	[BlobClass].[Id] = 1

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [BlobClass]

