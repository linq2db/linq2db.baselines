﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 10

SELECT TOP (1)
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

