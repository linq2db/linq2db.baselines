﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	((([p].[FirstName] + N' ') + Convert(VarChar(11), 1)) + Convert(VarChar(11), 2)) = N'John 12'

