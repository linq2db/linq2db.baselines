BeforeExecute
-- SqlServer.2008

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
	CASE
		WHEN CharIndex(N'123', [p_1].[FirstName], 6) = 0
			THEN -1
		ELSE Len([p_1].[FirstName]) - CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, Len([p_1].[FirstName]) - 5))) - 2
	END = 8

