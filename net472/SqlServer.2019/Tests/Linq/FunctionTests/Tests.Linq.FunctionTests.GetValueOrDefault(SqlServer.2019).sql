﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

