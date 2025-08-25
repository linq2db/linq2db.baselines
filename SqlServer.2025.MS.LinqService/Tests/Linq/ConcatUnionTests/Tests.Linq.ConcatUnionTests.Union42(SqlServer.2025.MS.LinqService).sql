﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p_1].[val]
FROM
	(
		SELECT
			[p].[ParentID] as [id],
			CAST(1 AS Bit) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID] as [id],
			CAST(0 AS Bit) as [val]
		FROM
			[Child] [ch]
	) [p_1]

