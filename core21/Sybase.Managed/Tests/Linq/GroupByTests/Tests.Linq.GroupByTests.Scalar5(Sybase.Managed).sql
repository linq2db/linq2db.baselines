﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

