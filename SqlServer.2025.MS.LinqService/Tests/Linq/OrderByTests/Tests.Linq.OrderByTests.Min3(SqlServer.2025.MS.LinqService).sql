﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	MIN([t2].[ParentID])
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[Value1]
	) [t2]

