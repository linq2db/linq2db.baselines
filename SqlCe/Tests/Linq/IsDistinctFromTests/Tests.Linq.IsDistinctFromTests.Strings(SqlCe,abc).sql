-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL OR [s].[String] <> @value

-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL OR [s].[NullableString] <> @value

-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] IS NULL OR [s].[String] <> @value)

-- SqlCe
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*) as [Count_1]
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] IS NULL OR [s].[NullableString] <> @value)

