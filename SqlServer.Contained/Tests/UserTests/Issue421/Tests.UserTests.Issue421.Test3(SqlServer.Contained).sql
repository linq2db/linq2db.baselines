BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [BlobClass]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[BlobClass]', N'U') IS NULL)
	CREATE TABLE [BlobClass]
	(
		[Id]        Int            NOT NULL,
		[BlobValue] VarBinary(100)     NULL,

		CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [BlobClass]

