﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [g_1].[ParentID]
	)
GROUP BY
	[g_1].[ParentID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [g_1].[ParentID]
	)
GROUP BY
	[g_1].[ParentID]

