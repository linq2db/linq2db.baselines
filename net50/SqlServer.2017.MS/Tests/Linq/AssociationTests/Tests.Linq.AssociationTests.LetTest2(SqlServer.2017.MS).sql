﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[t].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[t].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t]

