﻿BeforeExecute
--  SqlServer.2005

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

