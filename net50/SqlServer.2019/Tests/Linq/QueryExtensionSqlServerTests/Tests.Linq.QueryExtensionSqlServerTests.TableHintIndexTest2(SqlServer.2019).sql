﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex))

