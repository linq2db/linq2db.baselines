BeforeExecute
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
	CASE WHEN [s].[Int] = 2 THEN NULL ELSE [s].[Int] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[Int] = 4 THEN NULL ELSE [s].[Int] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[Int] = NULL THEN NULL ELSE [s].[Int] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableInt] = 2 THEN NULL ELSE [s].[NullableInt] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableInt] = 4 THEN NULL ELSE [s].[NullableInt] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableInt] = NULL THEN NULL ELSE [s].[NullableInt] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

DROP TABLE [Src]

