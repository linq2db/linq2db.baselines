-- Sybase.Managed Sybase

SELECT
	[p1].[FirstName],
	[p1].[PersonID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND Str_Replace([p1].[FirstName], 'J', '%') LIKE (CASE WHEN Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p2].[FirstName], 'J', '%'), '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') IS NULL OR '%' IS NULL THEN NULL ELSE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p2].[FirstName], 'J', '%'), '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' END) ESCAPE '~'

