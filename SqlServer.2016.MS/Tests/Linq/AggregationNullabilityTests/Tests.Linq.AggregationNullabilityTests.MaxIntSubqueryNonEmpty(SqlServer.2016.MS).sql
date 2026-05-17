-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	(
		SELECT
			MAX([i].[IntValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 1

