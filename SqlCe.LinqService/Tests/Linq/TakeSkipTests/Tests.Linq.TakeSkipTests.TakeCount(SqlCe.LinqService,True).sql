﻿BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	Count(*) as [COUNT_1]
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Child] [t1]
	) [t2]

