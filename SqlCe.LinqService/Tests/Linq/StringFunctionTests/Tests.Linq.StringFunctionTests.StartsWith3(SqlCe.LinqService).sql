BeforeExecute
-- SqlCe (asynchronously)
DECLARE @str NVarChar(7) -- String
SET     @str = 'John123'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@str LIKE Replace(Replace(Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%') + '%' ESCAPE '~'

