﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

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

