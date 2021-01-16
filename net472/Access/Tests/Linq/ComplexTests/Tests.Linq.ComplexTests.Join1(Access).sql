BeforeExecute
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
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID],
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	([Parent] [p]
		INNER JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID]))
		INNER JOIN [GrandChild] [g_1] ON ([p].[ParentID] = [g_1].[ParentID])
WHERE
	((([c_1].[ParentID] = 2 OR [c_1].[ParentID] = 3) AND ([g_1].[ChildID] <> 21 OR [g_1].[ChildID] IS NULL) AND ([g_1].[ChildID] <> 33 OR [g_1].[ChildID] IS NULL) OR [g_1].[ParentID] = 3 AND [g_1].[ChildID] = 32) OR [g_1].[ChildID] = 11)

