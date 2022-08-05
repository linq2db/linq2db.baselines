﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[LastName]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

