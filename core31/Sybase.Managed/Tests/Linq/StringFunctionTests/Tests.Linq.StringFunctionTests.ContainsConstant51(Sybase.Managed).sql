﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ps_1 UniVarChar(4) -- String
SET     @ps_1 = '%~[%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps_1 ESCAPE '~'

