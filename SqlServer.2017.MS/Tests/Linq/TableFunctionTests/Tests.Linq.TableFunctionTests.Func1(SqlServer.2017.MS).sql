﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@id) [p]

