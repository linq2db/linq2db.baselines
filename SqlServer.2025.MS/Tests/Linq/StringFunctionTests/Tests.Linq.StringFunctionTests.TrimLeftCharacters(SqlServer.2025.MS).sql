-- SqlServer.2025.MS SqlServer.2025

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
	LTRIM([pp].[Name], (N' J')) = N'ohn '

