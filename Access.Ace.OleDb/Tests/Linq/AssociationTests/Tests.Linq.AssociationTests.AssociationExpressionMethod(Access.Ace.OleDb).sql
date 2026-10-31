-- Access.Ace.OleDb AccessOleDb
SELECT
	[a_ChildPredicate_1].[ParentID],
	[a_ChildPredicate_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[a_ChildPredicate].[ParentID],
				[a_ChildPredicate].[ChildID]
			FROM
				[Child] [a_ChildPredicate]
			WHERE
				[a_ChildPredicate].[ChildID] > 1
		) [a_ChildPredicate_1] ON ([p].[ParentID] = [a_ChildPredicate_1].[ParentID])

