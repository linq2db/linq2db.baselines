﻿BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
SELECT 2,2,'abc','abc' UNION ALL
SELECT 3,NULL,'def',NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [Src]

