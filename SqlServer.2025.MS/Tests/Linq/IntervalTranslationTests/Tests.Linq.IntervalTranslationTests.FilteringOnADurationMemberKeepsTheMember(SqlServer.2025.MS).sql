-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > 1800
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Required] > 1800
ORDER BY
	[r].[Id]

