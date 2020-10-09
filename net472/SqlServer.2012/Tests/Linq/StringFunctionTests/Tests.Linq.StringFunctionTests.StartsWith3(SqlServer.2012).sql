BeforeExecute
-- SqlServer.2012
DECLARE @str NVarChar(4000) -- String
SET     @str = N'John123'

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@str LIKE (Replace(Replace(Replace([p].[FirstName], N'~', N'~~'), N'%', N'~%'), N'_', N'~_') + N'%') ESCAPE N'~'

