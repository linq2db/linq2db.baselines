﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[]456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%~[~]%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[]456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%~[~]%' ESCAPE N'~'

