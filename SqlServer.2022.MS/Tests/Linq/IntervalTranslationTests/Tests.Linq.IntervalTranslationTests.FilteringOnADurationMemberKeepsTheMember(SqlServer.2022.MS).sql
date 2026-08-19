-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Grace] > 1800
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	[r].[Required] > 1800
ORDER BY
	[r].[Id]

