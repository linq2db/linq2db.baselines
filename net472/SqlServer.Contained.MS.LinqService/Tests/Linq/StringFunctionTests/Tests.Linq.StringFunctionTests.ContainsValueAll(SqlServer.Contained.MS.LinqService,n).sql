﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%n%' ESCAPE N'~'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%n%' ESCAPE N'~'

