﻿BeforeExecute
-- SqlCe

DROP TABLE [Isue2424Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
SELECT 1,'1' UNION ALL
SELECT 3,'3' UNION ALL
SELECT 5,'5'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1'

BeforeExecute
-- SqlCe

DROP TABLE [Isue2424Table]

