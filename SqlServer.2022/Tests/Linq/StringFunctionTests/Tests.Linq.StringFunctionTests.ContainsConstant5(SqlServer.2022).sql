﻿BeforeExecute
-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE N'%~[%' ESCAPE N'~'

