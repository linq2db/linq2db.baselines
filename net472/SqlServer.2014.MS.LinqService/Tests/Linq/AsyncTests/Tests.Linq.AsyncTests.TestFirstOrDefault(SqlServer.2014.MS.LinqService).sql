﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @p_2 Int -- Int32
SET     @p_2 = 3
DECLARE @param Int -- Int32
SET     @param = 4

SELECT TOP (@take)
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	([o].[ParentID] IN (@p, @p_1, @p_2) OR [o].[ParentID] = @param)

