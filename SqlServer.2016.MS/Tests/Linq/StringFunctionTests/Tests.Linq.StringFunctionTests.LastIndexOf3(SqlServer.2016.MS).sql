-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p_1].[ID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			N'123' + [p].[FirstName] + N'0123451234' as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	1 = CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, 6))) AND
	CharIndex(N'123', Left([p_1].[FirstName], 11), 6) <> 0

