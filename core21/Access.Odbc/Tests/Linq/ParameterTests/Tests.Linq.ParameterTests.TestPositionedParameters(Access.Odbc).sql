BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @x3 Int -- Int32
SET     @x3 = 3
DECLARE @y10 Int -- Int32
SET     @y10 = 10
DECLARE @z2 Int -- Int32
SET     @z2 = 2
DECLARE @x5 Int -- Int32
SET     @x5 = 3
DECLARE @z5 Int -- Int32
SET     @z5 = 2
DECLARE @x4 Int -- Int32
SET     @x4 = 3
DECLARE @y11 Int -- Int32
SET     @y11 = 10
DECLARE @z3 Int -- Int32
SET     @z3 = 2
DECLARE @x6 Int -- Int32
SET     @x6 = 3
DECLARE @z6 Int -- Int32
SET     @z6 = 2
DECLARE @y12 Int -- Int32
SET     @y12 = 10
DECLARE @z4 Int -- Int32
SET     @z4 = 2
DECLARE @x7 Int -- Int32
SET     @x7 = 3
DECLARE @y13 Int -- Int32
SET     @y13 = 10
DECLARE @z7 Int -- Int32
SET     @z7 = 2
DECLARE @x8 Int -- Int32
SET     @x8 = 3
DECLARE @z8 Int -- Int32
SET     @z8 = 2
DECLARE @z9 Int -- Int32
SET     @z9 = 2
DECLARE @x9 Int -- Int32
SET     @x9 = 3
DECLARE @y14 Int -- Int32
SET     @y14 = 10
DECLARE @z10 Int -- Int32
SET     @z10 = 2
DECLARE @x10 Int -- Int32
SET     @x10 = 3
DECLARE @z11 Int -- Int32
SET     @z11 = 2

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

