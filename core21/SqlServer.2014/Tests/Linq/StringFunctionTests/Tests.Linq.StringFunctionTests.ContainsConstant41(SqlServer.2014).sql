﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[456'
DECLARE @ps_1 NVarChar(4000) -- String
SET     @ps_1 = N'%~[%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @ps_1 ESCAPE N'~'

