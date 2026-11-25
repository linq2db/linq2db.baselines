-- Access.Jet.Odbc AccessODBC
SELECT
	[c_1].[ChildID],
	IIF([n].[A] IS NULL, NULL, IIF([n].[B] IS NULL, [c_1].[ParentID], NULL))
FROM
	[Child] [c_1]
		LEFT JOIN [NullableOnlyRow] [n] ON ([n].[A] = [c_1].[ChildID])
WHERE
	[c_1].[ChildID] = 11 OR [c_1].[ChildID] = 21 OR [c_1].[ChildID] = 22

