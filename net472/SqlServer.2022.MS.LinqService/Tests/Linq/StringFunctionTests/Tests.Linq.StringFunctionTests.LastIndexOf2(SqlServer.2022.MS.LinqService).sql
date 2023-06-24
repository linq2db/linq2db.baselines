BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p_1].[ID],
	[p_1].[FirstName_1]
FROM
	(
		SELECT
			N'123' + [p].[FirstName] + N'012345' as [FirstName],
			[p].[PersonID] as [ID],
			[p].[FirstName] as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	IIF(CharIndex(N'123', [p_1].[FirstName], 6) = 0, -1, LEN(REPLACE([p_1].[FirstName],' ','.')) - CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, LEN(REPLACE([p_1].[FirstName],' ','.')) - 5))) - 2) = 8

