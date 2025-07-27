BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			1 as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			2147483648 as [Value_1]
		FROM
			[Person] [r]
	) [t1]

