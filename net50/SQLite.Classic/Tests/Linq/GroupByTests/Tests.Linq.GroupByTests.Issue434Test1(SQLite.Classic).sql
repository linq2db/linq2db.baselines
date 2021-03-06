﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_2 NVarChar(6) -- String
SET     @p_2 = '%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE @p_2 ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @input_2 NVarChar(6) -- String
SET     @input_2 = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input_2 ESCAPE '~'

