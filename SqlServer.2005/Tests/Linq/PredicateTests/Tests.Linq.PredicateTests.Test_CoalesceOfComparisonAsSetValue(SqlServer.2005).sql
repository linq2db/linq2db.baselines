-- SqlServer.2005
UPDATE
	[NullableFlagTable]
SET
	[Flag] = CASE
		WHEN [NullableFlagTable].[A] = [NullableFlagTable].[B] OR [NullableFlagTable].[A] IS NULL AND [NullableFlagTable].[B] IS NULL
			THEN 1
		ELSE 0
	END

-- SqlServer.2005
SELECT
	[r].[Id],
	[r].[Flag]
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

