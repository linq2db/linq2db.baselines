-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p_1].[ID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			N'123' + [p].[FirstName] + N'456' as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	[p_1].[FirstName] = N'123John456'

