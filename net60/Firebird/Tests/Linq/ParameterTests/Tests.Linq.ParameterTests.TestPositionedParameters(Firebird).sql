BeforeExecute
-- Firebird
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3

SELECT
	((((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int)) * (((((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int)) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / ((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int))) * Cast(@z2 as Int)) - "child_1"."ChildID") / ((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int))) * "child_1"."ChildID")
FROM
	"Child" "child_1"

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

