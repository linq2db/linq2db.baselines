-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	1000 - Coalesce((
		SELECT
			SUM([i].[FloatValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	), 0)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 2

