﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

