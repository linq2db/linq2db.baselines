﻿BeforeExecute
-- SqlServer.2014

SELECT
	LEN([p].[FirstName] + N'.') - 1 + LEN(N'.') - 1
FROM
	[Person] [p]

