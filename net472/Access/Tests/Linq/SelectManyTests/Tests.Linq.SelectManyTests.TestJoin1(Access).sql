BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Access AccessOleDb

SELECT 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	((([Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON ([p].[ParentID] = [g_1].[ParentID]))
		INNER JOIN [Child] [c_1] ON ([g_1].[ChildID] = [c_1].[ChildID]))
		INNER JOIN [LinqDataTypes] [t] ON ([c_1].[ParentID] = [t].[ID]))
		INNER JOIN [Person] [t_1] ON ([c_1].[ParentID] = [t_1].[PersonID])

