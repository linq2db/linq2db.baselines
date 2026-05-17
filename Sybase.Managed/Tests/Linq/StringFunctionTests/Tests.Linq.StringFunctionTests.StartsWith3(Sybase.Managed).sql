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
	@str LIKE (CASE WHEN Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') IS NULL OR '%' IS NULL THEN NULL ELSE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' END) ESCAPE '~'

