BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @x3_1 Int -- Int32
SET     @x3_1 = 3
DECLARE @y10_2 Int -- Int32
SET     @y10_2 = 10
DECLARE @z2_2 Int -- Int32
SET     @z2_2 = 2
DECLARE @x3_1 Int -- Int32
SET     @x3_1 = 3
DECLARE @z2_2 Int -- Int32
SET     @z2_2 = 2
DECLARE @x3 Int -- Int32
SET     @x3 = 3
DECLARE @y10_1 Int -- Int32
SET     @y10_1 = 10
DECLARE @z2_1 Int -- Int32
SET     @z2_1 = 2
DECLARE @x3 Int -- Int32
SET     @x3 = 3
DECLARE @z2_1 Int -- Int32
SET     @z2_1 = 2
DECLARE @y10 Int -- Int32
SET     @y10 = 10
DECLARE @z2 Int -- Int32
SET     @z2 = 2
DECLARE @x3 Int -- Int32
SET     @x3 = 3
DECLARE @y10_1 Int -- Int32
SET     @y10_1 = 10
DECLARE @z2_1 Int -- Int32
SET     @z2_1 = 2
DECLARE @x3 Int -- Int32
SET     @x3 = 3
DECLARE @z2_1 Int -- Int32
SET     @z2_1 = 2
DECLARE @z2 Int -- Int32
SET     @z2 = 2
DECLARE @x3_1 Int -- Int32
SET     @x3_1 = 3
DECLARE @y10_2 Int -- Int32
SET     @y10_2 = 10
DECLARE @z2_2 Int -- Int32
SET     @z2_2 = 2
DECLARE @x3_1 Int -- Int32
SET     @x3_1 = 3
DECLARE @z2_2 Int -- Int32
SET     @z2_2 = 2

SELECT
	((((? * (? - ?) / ?) * ?) * (((((? * (? - ?) / ?) * ?) * (? - ?) / ((? * (? - ?) / ?) * ?)) * ?) - [child_1].[ChildID]) / ((? * (? - ?) / ?) * ?)) * [child_1].[ChildID])
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

