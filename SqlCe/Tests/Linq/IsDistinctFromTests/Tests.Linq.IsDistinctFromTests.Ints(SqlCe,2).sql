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
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] <> @value

BeforeExecute
-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value

BeforeExecute
-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	[s].[Int] = @value

BeforeExecute
-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

