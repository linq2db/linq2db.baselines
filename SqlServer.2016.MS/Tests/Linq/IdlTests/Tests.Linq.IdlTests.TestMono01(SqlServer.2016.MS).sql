﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @t NVarChar(4000) -- String
SET     @t = N'A'

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[x].[FirstName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @t

