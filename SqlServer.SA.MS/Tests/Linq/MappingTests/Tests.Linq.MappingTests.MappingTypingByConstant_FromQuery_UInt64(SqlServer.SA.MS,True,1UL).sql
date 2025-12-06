-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(1 AS Decimal) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(2147483648 AS Decimal) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

