﻿BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

