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
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[String] = @value OR [s].[String] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Src] [s]
WHERE
	CASE WHEN [s].[NullableString] = @value OR [s].[NullableString] IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SqlCe

DROP TABLE [Src]

