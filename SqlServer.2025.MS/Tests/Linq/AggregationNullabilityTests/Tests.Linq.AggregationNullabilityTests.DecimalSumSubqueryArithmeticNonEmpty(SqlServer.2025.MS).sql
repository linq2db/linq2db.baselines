-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (1)
	[o].[Anchor] - Coalesce((
		SELECT
			SUM([i].[DecimalValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	), 0)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 1

