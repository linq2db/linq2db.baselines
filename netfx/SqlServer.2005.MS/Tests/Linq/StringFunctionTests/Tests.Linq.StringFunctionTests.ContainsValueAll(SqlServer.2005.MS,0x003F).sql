﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123?456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%~?%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123?456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%~?%' ESCAPE N'~'

