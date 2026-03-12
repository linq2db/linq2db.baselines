-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(1 AS Decimal(1, 0)) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(2147483648.123 AS Decimal(13, 3)) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

