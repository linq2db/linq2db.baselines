-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	(
		SELECT
			MIN([i].[IntValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 1

