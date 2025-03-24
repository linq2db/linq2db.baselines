﻿BeforeExecute
--  SqlServer.2008

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

