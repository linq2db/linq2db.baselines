﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[ChildID]
FROM
	[Child] [c_1]

