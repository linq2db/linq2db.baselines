﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	1
FROM
	[Person] [_]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

