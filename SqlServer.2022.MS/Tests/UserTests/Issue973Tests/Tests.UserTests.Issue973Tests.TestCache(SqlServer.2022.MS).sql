BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @p_2 Int -- Int32
SET     @p_2 = 3
DECLARE @param Int -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (@p, @p_1, @p_2) OR [o].[ParentID] = @param

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @p_2 Int -- Int32
SET     @p_2 = 3
DECLARE @param Int -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (@p, @p_1, @p_2) OR [o].[ParentID] = @param

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5
DECLARE @p_2 Int -- Int32
SET     @p_2 = 6
DECLARE @param Int -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (@p, @p_1, @p_2) OR [o].[ParentID] = @param

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 4
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5
DECLARE @p_2 Int -- Int32
SET     @p_2 = 6
DECLARE @param Int -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (@p, @p_1, @p_2) OR [o].[ParentID] = @param

