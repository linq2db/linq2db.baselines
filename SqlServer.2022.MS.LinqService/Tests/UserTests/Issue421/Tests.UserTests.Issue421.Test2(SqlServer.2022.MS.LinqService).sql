﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[BlobClass]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobClass].[Id] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

