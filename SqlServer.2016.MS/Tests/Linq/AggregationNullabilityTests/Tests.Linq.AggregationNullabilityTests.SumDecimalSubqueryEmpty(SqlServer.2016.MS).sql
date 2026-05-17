-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	1000 - Coalesce((
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
	[o].[Id] = 2

