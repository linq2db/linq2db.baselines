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
-- SqlServer.2008

SELECT
	[t2].[ParentID_1],
	[t2].[ChildID],
	[t1].[GrandChildID]
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID],
			[parent_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [parent_1],
			[Child] [child_1]
	) [t2]
		LEFT JOIN [GrandChild] [t1] ON [t2].[ParentID] = [t1].[ParentID] AND [t2].[ChildID] = [t1].[ChildID]

