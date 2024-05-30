BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[left_1].[ParentID],
	[right_2].[ParentID]
FROM
	[Parent] [left_1]
		RIGHT JOIN (
			SELECT
				[right_1].[ParentID],
				[right_1].[Value1] + 2 as [c1]
			FROM
				[Parent] [right_1]
					INNER JOIN [Parent] [right2] ON ([right_1].[Value1] = [right2].[Value1] + 2)
		) [right_2] ON (([right_2].[c1] = [left_1].[Value1] OR [right_2].[c1] IS NULL AND [left_1].[Value1] IS NULL))
ORDER BY
	[left_1].[ParentID]

