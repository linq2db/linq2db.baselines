﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[456'
DECLARE @ps NVarChar(4000) -- String
SET     @ps = N'%~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @ps ESCAPE N'~'

