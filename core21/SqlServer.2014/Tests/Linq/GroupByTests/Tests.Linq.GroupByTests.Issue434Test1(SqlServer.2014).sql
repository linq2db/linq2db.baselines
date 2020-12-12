BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'test'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE N'%' + Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(@p_1), N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @input_1 NVarChar(4000) -- String
SET     @input_1 = N'test'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'%' + Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(@input_1), N'~', N'~~'), N'%', N'~%'), N'_', N'~_'), N'?', N'~?'), N'*', N'~*'), N'#', N'~#'), N'[', N'~['), N']', N'~]') + N'%' ESCAPE N'~'

