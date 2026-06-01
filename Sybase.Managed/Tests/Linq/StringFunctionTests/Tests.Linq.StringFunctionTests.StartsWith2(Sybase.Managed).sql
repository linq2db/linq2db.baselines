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
	'John123' LIKE (CASE WHEN Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') IS NULL OR '%' IS NULL THEN NULL ELSE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p].[FirstName], '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') || '%' END) ESCAPE '~'

