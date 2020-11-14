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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c1].[ChildID],
	[c2].[GrandChildID],
	[c3].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c1] ON [p].[ParentID] = [c1].[ParentID]
		INNER JOIN [GrandChild] [c2] ON [c1].[ParentID] = [c2].[ParentID]
		INNER JOIN [GrandChild] [c3] ON ([c2].[ParentID] = [c3].[ParentID] OR [c2].[ParentID] IS NULL AND [c3].[ParentID] IS NULL)

