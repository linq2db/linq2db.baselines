﻿BeforeExecute
-- SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 0

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <> @ID

