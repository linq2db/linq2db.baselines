BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Boolean
SET     @p1 = False

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif(@p1, 0, InStr(1, [p].[FirstName], 'oh', 1) - 1) = 1 AND
	[p].[PersonID] = 1

