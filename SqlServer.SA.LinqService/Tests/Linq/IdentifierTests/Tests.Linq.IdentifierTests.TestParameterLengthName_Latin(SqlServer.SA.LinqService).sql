﻿BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Int -- Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

