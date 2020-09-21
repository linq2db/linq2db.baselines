BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

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
	[t2].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Child].[ParentID_1],
			[a_Child].[ChildID]
		FROM
			[GrandChild] [c_1]
				LEFT JOIN (
					SELECT
						[a_Parent].[ParentID],
						[t1].[ParentID] as [ParentID_1],
						[t1].[ChildID]
					FROM
						[Child] [t1]
							LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])
				) [a_Child] ON ([c_1].[ParentID] = [a_Child].[ParentID_1] AND [c_1].[ChildID] = [a_Child].[ChildID])
		WHERE
			[a_Child].[ParentID] > 0
	) [t2]

