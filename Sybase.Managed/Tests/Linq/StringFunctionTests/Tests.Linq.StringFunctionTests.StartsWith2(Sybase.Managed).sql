-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	'John123' LIKE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' ESCAPE '~'

