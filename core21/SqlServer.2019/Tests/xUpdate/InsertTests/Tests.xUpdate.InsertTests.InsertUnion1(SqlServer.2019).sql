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
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 
	[t1].[ParentID] + 1000, 
	[t1].[Value1]
FROM
	( 
		SELECT 
			[c_1].[ParentID], 
			Convert(Int, Floor(Convert(Float, [c_1].[ChildID]) / 10)) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT 
			IIF([c_2].[ParentID] IS NULL, 0, [c_2].[ParentID]) as [ParentID], 
			Floor(Convert(Float, IIF([c_2].[GrandChildID] IS NULL, 0, [c_2].[GrandChildID])) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Count(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

