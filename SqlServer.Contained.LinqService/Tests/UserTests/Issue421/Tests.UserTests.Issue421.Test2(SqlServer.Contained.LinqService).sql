﻿BeforeExecute
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
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

UPDATE
	[BlobClass]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobClass].[Id] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [BlobClass]

