﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > @n
	) + 2
FROM
	[Parent] [p]

