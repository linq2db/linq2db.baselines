﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
GROUP BY
	[c_1].[ParentID]
HAVING
	COUNT(*) > 1 AND COUNT(*) > 1

