﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min([t1].[ParentID]), @defValue)
FROM
	[Parent] [t1]

