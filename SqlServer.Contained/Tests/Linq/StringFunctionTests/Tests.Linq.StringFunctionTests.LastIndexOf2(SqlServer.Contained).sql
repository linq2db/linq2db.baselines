-- SqlServer.Contained SqlServer.2019

SELECT
	[p_1].[ID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			N'123' + [p].[FirstName] + N'012345' as [FirstName],
			[p].[FirstName] as [FirstName_1],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	(LEN(N'123' + [p_1].[FirstName_1] + N'012345.') - 1) - CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, LEN(N'123' + [p_1].[FirstName_1] + N'012345.') - 6))) = 10 AND
	CharIndex(N'123', [p_1].[FirstName], 6) <> 0

