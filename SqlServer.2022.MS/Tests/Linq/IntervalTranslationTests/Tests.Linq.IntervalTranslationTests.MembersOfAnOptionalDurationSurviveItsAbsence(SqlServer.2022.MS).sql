-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id],
	CAST(([r].[Grace] / 60) % 60 AS Int),
	CAST([r].[Grace] AS Float) / 60,
	CAST([r].[Required] AS Float) / 60
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

