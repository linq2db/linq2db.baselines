BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0
DECLARE @Length_1 Int -- Int32
SET     @Length_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(@p1 = 1, Len([p].[LastName]) - 1, IIF(CharIndex(N'p', [p].[LastName]) = 0, -1, (Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))) - @Length_1 + 1)) = 2 AND
	[p].[PersonID] = 1

