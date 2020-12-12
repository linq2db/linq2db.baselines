BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 UniVarChar(4) -- String
SET     @p_1 = 'test'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE '%' + Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Lower(@p_1), '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @input_1 UniVarChar(4) -- String
SET     @input_1 = 'test'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE '%' + Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Str_Replace(Lower(@input_1), '~', '~~'), '_', '~_'), '%', '~%'), '[', '~['), ']', '~]'), '^', '~^') + '%' ESCAPE '~'

