BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS DISTINCT FROM @value

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT DISTINCT FROM @value

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @value NVarChar(4000) -- String
SET     @value = N'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT DISTINCT FROM @value

