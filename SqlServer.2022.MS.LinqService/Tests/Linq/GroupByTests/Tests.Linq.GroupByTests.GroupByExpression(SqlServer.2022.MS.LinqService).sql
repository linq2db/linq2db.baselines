﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min([t1].[ParentID]), @defValue)
FROM
	[Parent] [t1]

