﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p OR [x].[ParentID] = @p

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p OR [x].[ParentID] = @p_1

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p OR [x].[ParentID] = @p_1

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

