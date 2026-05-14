-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	(
		SELECT
			SUM([i].[IntValueN])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 2

