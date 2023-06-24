﻿BeforeExecute
-- SqlServer.2016
DECLARE @Length Int -- Int32
SET     @Length = 4

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LEN(REPLACE([p].[FirstName],' ','.')) = @Length AND
	[p].[PersonID] = 1

