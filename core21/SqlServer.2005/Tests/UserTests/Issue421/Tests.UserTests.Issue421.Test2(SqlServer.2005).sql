BeforeExecute
-- SqlServer.2005

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

UPDATE
	[_]
SET
	[_].[BlobValue] = 0x030201
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2005

DROP TABLE [BlobClass]

