﻿BeforeExecute
-- SqlServer.2017

SELECT
	LEN([p].[FirstName] + N'.') - 1 + LEN(N'.') - 1
FROM
	[Person] [p]

