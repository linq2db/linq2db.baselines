﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[p_1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			NULL as [Value1]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p2].[ParentID],
			[p2].[Value1]
		FROM
			[Parent] [p2]
	) [p_1]

