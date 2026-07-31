-- Access.Jet.OleDb AccessOleDb
SELECT
	(
		SELECT TOP 1
			[t].[ParentID]
		FROM
			[Child] [t]
		WHERE
			[gr_1].[Key_1] = [t].[ParentID]
		ORDER BY
			[t].[ChildID] DESC
	),
	(
		SELECT TOP 1
			[t_1].[ChildID]
		FROM
			[Child] [t_1]
		WHERE
			[gr_1].[Key_1] = [t_1].[ParentID]
		ORDER BY
			[t_1].[ChildID] DESC
	)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
	) [gr_1]

