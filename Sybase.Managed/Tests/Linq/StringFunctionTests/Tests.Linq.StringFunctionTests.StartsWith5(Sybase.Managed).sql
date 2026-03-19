-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1],
	[Person] [p2]
WHERE
	[t1].[PersonID] = [p2].[PersonID] AND Str_Replace([t1].[FirstName], 'J', '%') LIKE Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace([p2].[FirstName], 'J', '%'), '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' ESCAPE '~'

