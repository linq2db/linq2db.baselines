﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@p) [p]

