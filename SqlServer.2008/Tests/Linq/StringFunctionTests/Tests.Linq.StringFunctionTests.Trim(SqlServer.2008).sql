-- SqlServer.2008

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
	LTrim(RTrim([pp].[Name])) = N'John'

