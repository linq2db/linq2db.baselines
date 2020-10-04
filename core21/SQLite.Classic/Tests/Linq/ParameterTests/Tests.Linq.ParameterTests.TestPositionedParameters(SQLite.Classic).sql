﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @z2  -- Int32
SET     @z2 = 2
DECLARE @y10  -- Int32
SET     @y10 = 10
DECLARE @z2_1  -- Int32
SET     @z2_1 = 2
DECLARE @y10_1  -- Int32
SET     @y10_1 = 10
DECLARE @x3  -- Int32
SET     @x3 = 3
DECLARE @z2_2  -- Int32
SET     @z2_2 = 2
DECLARE @y10_2  -- Int32
SET     @y10_2 = 10
DECLARE @x3_1  -- Int32
SET     @x3_1 = 3

SELECT
	((((@x3_1 * (@y10_2 - @z2_2) / @x3_1) * @z2_2) * (((((@x3 * (@y10_1 - @z2_1) / @x3) * @z2_1) * (@y10 - @z2) / ((@x3 * (@y10_1 - @z2_1) / @x3) * @z2_1)) * @z2) - [child_1].[ChildID]) / ((@x3_1 * (@y10_2 - @z2_2) / @x3_1) * @z2_2)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

