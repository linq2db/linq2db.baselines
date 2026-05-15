-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	(
		SELECT
			AVG([i].[IntValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 1

