﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + @n
FROM
	[Parent] [p]

