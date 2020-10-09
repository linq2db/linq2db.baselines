BeforeExecute
-- SqlServer.2012
DECLARE @p1 Bit -- Boolean
SET     @p1 = 1

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(@p1 = 1, 0, CharIndex(N'', [p].[FirstName]) - 1) = 0 AND
	[p].[PersonID] = 1

