﻿BeforeExecute
-- SqlServer.2005

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTRIM(N'  ' + [pp].[FirstName] + N' ') = N'John '

