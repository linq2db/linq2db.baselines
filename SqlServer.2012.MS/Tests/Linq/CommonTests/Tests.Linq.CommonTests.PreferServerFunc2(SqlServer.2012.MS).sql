﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	LEN([p].[FirstName] + N'.') - 1 + LEN(N'.') - 1
FROM
	[Person] [p]

