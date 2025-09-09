BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT DISTINCT FROM @value

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT DISTINCT FROM @value

