﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

