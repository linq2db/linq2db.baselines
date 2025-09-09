BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[c_1].[ParentID] = [a_GrandChildren].[ParentID] AND
			[c_1].[ChildID] = [a_GrandChildren].[ChildID]
	) = 2
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren_1]
		WHERE
			[c_2].[ParentID] = [a_GrandChildren_1].[ParentID] AND
			[c_2].[ChildID] = [a_GrandChildren_1].[ChildID]
	) = 3

