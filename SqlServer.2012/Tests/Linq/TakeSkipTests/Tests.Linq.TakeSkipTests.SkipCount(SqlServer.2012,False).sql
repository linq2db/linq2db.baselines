﻿BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS
	) [t2]

