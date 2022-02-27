BeforeExecute
-- SqlServer.2012
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0
DECLARE @Length_1 Int -- Int32
SET     @Length_1 = 3

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
	IIF(@p1 = 1, 5, IIF(CharIndex(N'123', [p_1].[FirstName], 6) = 0, -1, (Len([p_1].[FirstName]) - CharIndex(N'321', Reverse(Substring([p_1].[FirstName], 6, Len([p_1].[FirstName]) - 5)))) - @Length_1 + 1)) = 8

