BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[pp].[ID],
	[pp].[Name_1]
FROM
	(
		SELECT
			N'  ' + [p].[FirstName] + N' ' as [Name],
			[p].[PersonID] as [ID],
			[p].[FirstName] as [Name_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [pp]
WHERE
	LTrim([pp].[Name]) = N'John '

