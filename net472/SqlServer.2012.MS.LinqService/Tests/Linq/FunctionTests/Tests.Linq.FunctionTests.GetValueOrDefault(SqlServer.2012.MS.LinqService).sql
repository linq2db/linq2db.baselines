﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

