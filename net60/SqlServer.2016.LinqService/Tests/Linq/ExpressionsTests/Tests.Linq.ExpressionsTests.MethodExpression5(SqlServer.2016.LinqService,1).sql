﻿BeforeExecute
-- SqlServer.2016
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + @n
FROM
	[Parent] [p]

