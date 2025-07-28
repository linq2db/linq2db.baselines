BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(NULL AS BigInt) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(2147483648 AS BigInt) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

