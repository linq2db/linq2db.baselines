﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p_2 VarWChar(6) -- String
SET     @p_2 = '%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON ([_gjd_ri].[PersonID] = [p].[PersonID])
WHERE
	LCase([p].[FirstName]) LIKE @p_2

BeforeExecute
-- Access AccessOleDb
DECLARE @input_2 VarWChar(6) -- String
SET     @input_2 = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) LIKE @input_2

