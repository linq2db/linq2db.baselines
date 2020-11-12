BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Length_1 Int -- Int32
SET     @Length_1 = 9

SELECT
	[p_1].[ID],
	[p_1].[FirstName_1]
FROM
	(
		SELECT
			N'123' + [p].[FirstName] + N'0123451234' as [FirstName],
			[p].[PersonID] as [ID],
			[p].[FirstName] as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	IIF(CharIndex(N'123', Left([p_1].[FirstName], 11), 6) = 0, -1, @Length_1 - CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, 6)))) = 8

