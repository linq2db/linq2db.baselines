﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@id) [p]

