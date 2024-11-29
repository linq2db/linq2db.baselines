BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[right_2].[Right_1]
FROM
	[Parent] [t1]
		RIGHT JOIN (
			SELECT
				[right_1].[ParentID] as [Right_1],
				[right_1].[Value1] + 2 as [c1]
			FROM
				[Parent] [right_1]
					INNER JOIN [Parent] [right2] ON ([right_1].[Value1] = [right2].[Value1] + 2)
		) [right_2] ON ([right_2].[c1] = [t1].[Value1] OR [right_2].[c1] IS NULL AND [t1].[Value1] IS NULL)
ORDER BY
	[t1].[ParentID]

