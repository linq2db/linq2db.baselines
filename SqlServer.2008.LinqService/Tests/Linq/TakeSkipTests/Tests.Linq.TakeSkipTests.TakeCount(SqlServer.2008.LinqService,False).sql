﻿BeforeExecute
-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

