BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[gr_1].[c1]
FROM
	(
		SELECT
			IIF([gr].[Value1] IS NULL, [c_1].[ChildID], [gr].[Value1]) as [c1]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON ([gr].[ParentID] = [c_1].[ParentID])
	) [gr_1]
GROUP BY
	[gr_1].[c1]

