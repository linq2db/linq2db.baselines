﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 4

SELECT DISTINCT
	[t1].[ParentID]
FROM
	(
		SELECT TOP (@take)
			[ch].[ParentID]
		FROM
			[Child] [ch]
		ORDER BY
			[ch].[ParentID]
	) [t1]

