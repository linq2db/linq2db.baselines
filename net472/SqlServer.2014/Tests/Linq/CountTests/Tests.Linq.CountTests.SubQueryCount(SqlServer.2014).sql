﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

