﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ps NVarChar(4000) -- String
SET     @ps = N'%~[%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE @ps ESCAPE N'~'

