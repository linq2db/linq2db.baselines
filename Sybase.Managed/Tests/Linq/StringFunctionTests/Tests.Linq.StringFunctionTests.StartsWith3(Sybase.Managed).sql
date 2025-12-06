-- Sybase.Managed Sybase
DECLARE @str UniVarChar(7) -- String
SET     @str = 'John123'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@str LIKE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' ESCAPE '~'

