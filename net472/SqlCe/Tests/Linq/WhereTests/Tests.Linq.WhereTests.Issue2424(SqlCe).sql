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
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END >= 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END <= 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END > 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END < 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 = CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END = 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '2' THEN 1
		WHEN [i].[StrValue] = '2' THEN 0
		ELSE -1
	END <= 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '4' THEN 1
		WHEN [i].[StrValue] = '4' THEN 0
		ELSE -1
	END >= 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END < 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '3' THEN 1
		WHEN [i].[StrValue] = '3' THEN 0
		ELSE -1
	END > 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= CASE
		WHEN [i].[StrValue] > '5' THEN 1
		WHEN [i].[StrValue] = '5' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '5' THEN 1
		WHEN [i].[StrValue] = '5' THEN 0
		ELSE -1
	END >= 0

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= CASE
		WHEN [i].[StrValue] > '1' THEN 1
		WHEN [i].[StrValue] = '1' THEN 0
		ELSE -1
	END

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	CASE
		WHEN [i].[StrValue] > '1' THEN 1
		WHEN [i].[StrValue] = '1' THEN 0
		ELSE -1
	END <= 0

BeforeExecute
-- SqlCe

DROP TABLE [Isue2424Table]

