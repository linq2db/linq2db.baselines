﻿BeforeExecute
-- SqlCe
DECLARE @defValue Int -- Int32
SET     @defValue = 10

SELECT
	Coalesce(Min([gr].[ParentID]), @defValue) as [c1]
FROM
	[Parent] [gr]

