﻿BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

