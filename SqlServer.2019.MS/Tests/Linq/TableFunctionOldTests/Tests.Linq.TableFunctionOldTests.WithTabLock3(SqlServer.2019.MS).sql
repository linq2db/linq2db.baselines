﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] WITH (TABLOCK)

