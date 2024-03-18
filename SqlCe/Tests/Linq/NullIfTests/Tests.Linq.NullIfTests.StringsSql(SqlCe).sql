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
	CASE WHEN [s].[String] = 'abc' THEN NULL ELSE [s].[String] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[String] = 'xyz' THEN NULL ELSE [s].[String] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[String] = NULL THEN NULL ELSE [s].[String] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableString] = 'abc' THEN NULL ELSE [s].[NullableString] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableString] = 'xyz' THEN NULL ELSE [s].[NullableString] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

SELECT
	CASE WHEN [s].[NullableString] = NULL THEN NULL ELSE [s].[NullableString] END as [c1]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- SqlCe

DROP TABLE [Src]

