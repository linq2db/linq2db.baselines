﻿BeforeExecute
--  SqlCe

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2) as [c1]
FROM
	[Parent] [p]

