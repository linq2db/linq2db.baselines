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
DECLARE @value_1 NVarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value_1 NVarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value_1 NVarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value_1 OR [s].[String] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe
DECLARE @value_1 NVarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value_1 OR [s].[NullableString] IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe

DROP TABLE [Src]

