-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pp].[ID],
	[pp].[Name]
FROM
	(
		SELECT
			N'  ' + [p].[FirstName] + N' ' as [Name],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [pp]
WHERE
	LTRIM([pp].[Name], (N' ')) = N'John '

