BeforeExecute
-- Access AccessOleDb
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @x5 Integer -- Int32
SET     @x5 = 3
DECLARE @z5 Integer -- Int32
SET     @z5 = 2
DECLARE @x4 Integer -- Int32
SET     @x4 = 3
DECLARE @y11 Integer -- Int32
SET     @y11 = 10
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @x6 Integer -- Int32
SET     @x6 = 3
DECLARE @z6 Integer -- Int32
SET     @z6 = 2
DECLARE @y12 Integer -- Int32
SET     @y12 = 10
DECLARE @z4 Integer -- Int32
SET     @z4 = 2
DECLARE @x7 Integer -- Int32
SET     @x7 = 3
DECLARE @y13 Integer -- Int32
SET     @y13 = 10
DECLARE @z7 Integer -- Int32
SET     @z7 = 2
DECLARE @x8 Integer -- Int32
SET     @x8 = 3
DECLARE @z8 Integer -- Int32
SET     @z8 = 2
DECLARE @z9 Integer -- Int32
SET     @z9 = 2
DECLARE @x9 Integer -- Int32
SET     @x9 = 3
DECLARE @y14 Integer -- Int32
SET     @y14 = 10
DECLARE @z10 Integer -- Int32
SET     @z10 = 2
DECLARE @x10 Integer -- Int32
SET     @x10 = 3
DECLARE @z11 Integer -- Int32
SET     @z11 = 2

SELECT
	((((@x3 * (@y10 - @z2) / @x5) * @z5) * (((((@x4 * (@y11 - @z3) / @x6) * @z6) * (@y12 - @z4) / ((@x7 * (@y13 - @z7) / @x8) * @z8)) * @z9) - [child_1].[ChildID]) / ((@x9 * (@y14 - @z10) / @x10) * @z11)) * [child_1].[ChildID])
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

