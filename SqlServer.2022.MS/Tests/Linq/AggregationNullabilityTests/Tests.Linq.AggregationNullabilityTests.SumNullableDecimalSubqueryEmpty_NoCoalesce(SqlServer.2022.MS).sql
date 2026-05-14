-- SqlServer.2022.MS SqlServer.2022

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

