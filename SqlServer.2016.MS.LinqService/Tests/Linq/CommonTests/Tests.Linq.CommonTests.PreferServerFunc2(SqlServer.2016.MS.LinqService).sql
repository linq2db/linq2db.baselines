﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	LEN([p].[FirstName] + N'.') - 1 + LEN(N'.') - 1
FROM
	[Person] [p]

