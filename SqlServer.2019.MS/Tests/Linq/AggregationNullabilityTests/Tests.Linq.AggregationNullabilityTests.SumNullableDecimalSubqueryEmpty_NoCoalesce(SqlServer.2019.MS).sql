-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	(
		SELECT
			SUM([i].[DecimalValueN])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 2

