﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Count(*)
FROM
	(
		SELECT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [t1]

