﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [a_Children]
		WHERE
			([p].[ParentID] = [a_Children].[Value1])
	)
FROM
	[Parent] [p]

