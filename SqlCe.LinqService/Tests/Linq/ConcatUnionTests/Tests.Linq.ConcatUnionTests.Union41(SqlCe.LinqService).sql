﻿BeforeExecute
-- SqlCe (asynchronously)

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

