﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	((([p].[FirstName] + N' ') + Convert(VarChar(11), 1)) + Convert(VarChar(11), 2)) = N'John 12'

