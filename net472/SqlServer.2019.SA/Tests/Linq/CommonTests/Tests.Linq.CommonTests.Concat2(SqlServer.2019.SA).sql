﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + N' ' + Convert(VarChar(11), 1) = N'John 1'

