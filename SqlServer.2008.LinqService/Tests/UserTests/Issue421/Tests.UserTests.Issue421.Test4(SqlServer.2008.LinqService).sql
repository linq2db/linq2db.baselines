﻿BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

