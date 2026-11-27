-- SqlServer.CS SqlServer.2025
SELECT
	[i].[Id]
FROM
	[InEnumTable] [i]
WHERE
	[i].[Value] IN (1, 2)
ORDER BY
	[i].[Id]

