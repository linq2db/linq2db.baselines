﻿BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[PersonID]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

