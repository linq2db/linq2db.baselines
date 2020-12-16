BeforeExecute
-- SqlServer.2005
DECLARE @p_2 NVarChar(4000) -- String
SET     @p_2 = N'%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE @p_2 ESCAPE N'~'

BeforeExecute
-- SqlServer.2005
DECLARE @input_2 NVarChar(4000) -- String
SET     @input_2 = N'%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input_2 ESCAPE N'~'

