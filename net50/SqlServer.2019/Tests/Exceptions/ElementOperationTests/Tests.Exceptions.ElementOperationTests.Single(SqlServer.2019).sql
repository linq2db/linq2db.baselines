﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

