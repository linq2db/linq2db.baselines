﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > @n
	)
FROM
	[Parent] [p]

