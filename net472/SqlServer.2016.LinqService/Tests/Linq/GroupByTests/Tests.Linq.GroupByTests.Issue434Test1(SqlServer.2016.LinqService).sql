﻿BeforeExecute
-- SqlServer.2016
DECLARE @input_1 NVarChar(4000) -- String
SET     @input_1 = N'%test%'

SELECT
	[p].[PersonID],
	[_gjd_ri].[PersonID],
	[_gjd_ri].[Diagnosis]
FROM
	[Person] [p]
		INNER JOIN [Patient] [_gjd_ri] ON [_gjd_ri].[PersonID] = [p].[PersonID]
WHERE
	Lower([p].[FirstName]) LIKE @input_1 ESCAPE N'~'

BeforeExecute
-- SqlServer.2016
DECLARE @input_1 NVarChar(4000) -- String
SET     @input_1 = N'%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input_1 ESCAPE N'~'

