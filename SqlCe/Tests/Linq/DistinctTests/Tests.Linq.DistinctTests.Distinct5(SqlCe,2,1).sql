﻿BeforeExecute
-- SqlCe
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2) as [ParentID],
	@Value1 as [Value1]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2) as [ParentID],
	@Value1 as [Value1]
FROM
	[Parent] [p]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

