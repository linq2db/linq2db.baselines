﻿BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[x].[FirstName],
	[x].[PersonID] as [ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] LIKE 'J%' ESCAPE '~'
ORDER BY
	[x].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

