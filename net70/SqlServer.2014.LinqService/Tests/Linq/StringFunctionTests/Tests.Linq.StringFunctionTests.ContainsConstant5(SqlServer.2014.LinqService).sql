﻿BeforeExecute
-- SqlServer.2014

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE N'%~[%' ESCAPE N'~'

