-- SqlServer.2025
UPDATE
	[NullableFlagTable]
SET
	[Flag] = IIF([NullableFlagTable].[A] = [NullableFlagTable].[B] OR [NullableFlagTable].[A] IS NULL AND [NullableFlagTable].[B] IS NULL, 1, 0)

-- SqlServer.2025
SELECT
	[r].[Id],
	[r].[Flag]
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

