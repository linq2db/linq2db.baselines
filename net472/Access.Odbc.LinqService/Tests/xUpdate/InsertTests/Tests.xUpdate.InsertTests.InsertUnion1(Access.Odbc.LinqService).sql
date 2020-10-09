BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC

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
			Int([c_1].[ChildID] / 10) as [Value1]
		FROM
			[Child] [c_1]
		UNION
		SELECT 
			Iif([c_2].[ParentID] IS NULL, 0, [c_2].[ParentID]) as [ParentID], 
			Int(Iif([c_2].[GrandChildID] IS NULL, 0, [c_2].[GrandChildID]) / 100) as [Value1]
		FROM
			[GrandChild] [c_2]
	) [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Count(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

