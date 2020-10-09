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

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID], 
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

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

SELECT TOP 10 
	[cp].[ParentID], 
	[c_1].[ChildID]
FROM
	[Parent] [cp]
		INNER JOIN ( 
			SELECT DISTINCT 
				[t3].[ParentID], 
				[t3].[ChildID]
			FROM
				( 
					SELECT 
						[t1].[ParentID], 
						[t1].[ChildID]
					FROM
						[Child] [t1]
					UNION
					SELECT 
						[t2].[ParentID], 
						[t2].[ChildID]
					FROM
						[Child] [t2]
				) [t3]
		) [c_1] ON ([c_1].[ParentID] = [cp].[ParentID])

