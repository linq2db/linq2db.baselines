﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @z2 Int -- Int32
SET     @z2 = 2
DECLARE @y10 Int -- Int32
SET     @y10 = 10
DECLARE @x3 Int -- Int32
SET     @x3 = 3

SELECT
	((((@x3 * (@y10 - @z2) / @x3) * @z2) * (((((@x3 * (@y10 - @z2) / @x3) * @z2) * (@y10 - @z2) / ((@x3 * (@y10 - @z2) / @x3) * @z2)) * @z2) - [child_1].[ChildID]) / ((@x3 * (@y10 - @z2) / @x3) * @z2)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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

