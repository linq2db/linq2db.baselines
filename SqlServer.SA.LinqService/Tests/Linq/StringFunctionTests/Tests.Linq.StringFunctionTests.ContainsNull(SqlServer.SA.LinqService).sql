﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

