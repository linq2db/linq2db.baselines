﻿BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	Count(*) > 1

