BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Length_1 Int -- Int32
SET     @Length_1 = 4

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[FirstName]) = ? AND [p].[PersonID] = 1

