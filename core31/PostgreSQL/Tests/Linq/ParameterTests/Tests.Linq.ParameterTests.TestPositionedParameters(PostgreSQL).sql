BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z3 Integer -- Int32
SET     @z3 = 2
DECLARE @y11 Integer -- Int32
SET     @y11 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @z4 Integer -- Int32
SET     @z4 = 2
DECLARE @y12 Integer -- Int32
SET     @y12 = 10
DECLARE @x4 Integer -- Int32
SET     @x4 = 3

SELECT
	((((:x4 * (:y12 - :z4) / :x4) * :z4) * (((((:x3 * (:y11 - :z3) / :x3) * :z3) * (:y10 - :z2) / ((:x3 * (:y11 - :z3) / :x3) * :z3)) * :z2) - child_1."ChildID") / ((:x4 * (:y12 - :z4) / :x4) * :z4)) * child_1."ChildID")
FROM
	"Child" child_1

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

