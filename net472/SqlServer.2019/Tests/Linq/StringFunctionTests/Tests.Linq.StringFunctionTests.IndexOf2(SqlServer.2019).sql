BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
	IIF(@Length_1 = 0 AND Len([p].[LastName]) > 2, 2, CharIndex(N'e', [p].[LastName], 3) - 1) = 4 AND
	[p].[PersonID] = 2

