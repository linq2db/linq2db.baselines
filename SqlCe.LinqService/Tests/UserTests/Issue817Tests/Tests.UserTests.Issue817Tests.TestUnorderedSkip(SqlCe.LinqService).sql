﻿BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Person] [t1]

BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[_].[PersonID]
FROM
	[Person] [_]
ORDER BY
	[_].[PersonID]
OFFSET @skip ROWS

