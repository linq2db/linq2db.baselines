﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (2)
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

