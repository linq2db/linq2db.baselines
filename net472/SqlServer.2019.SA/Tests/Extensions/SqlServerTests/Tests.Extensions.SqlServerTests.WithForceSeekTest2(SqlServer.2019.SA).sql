﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek, Index(IX_ChildIndex))

