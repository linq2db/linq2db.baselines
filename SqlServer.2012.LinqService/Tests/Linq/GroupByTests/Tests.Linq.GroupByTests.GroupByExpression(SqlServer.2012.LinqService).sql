﻿BeforeExecute
-- SqlServer.2012
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

