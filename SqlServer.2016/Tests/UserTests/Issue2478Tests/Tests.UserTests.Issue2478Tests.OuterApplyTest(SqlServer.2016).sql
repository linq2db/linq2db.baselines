﻿BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

