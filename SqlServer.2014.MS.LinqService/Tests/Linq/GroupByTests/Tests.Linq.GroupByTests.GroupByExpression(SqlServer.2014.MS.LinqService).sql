﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN([gr].[ParentID]), @defValue)
FROM
	[Parent] [gr]

