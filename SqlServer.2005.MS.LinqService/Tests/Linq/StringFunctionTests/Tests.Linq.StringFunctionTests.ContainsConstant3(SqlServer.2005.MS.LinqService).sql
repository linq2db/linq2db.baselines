﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

