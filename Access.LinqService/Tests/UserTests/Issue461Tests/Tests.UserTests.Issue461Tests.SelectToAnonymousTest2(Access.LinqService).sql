BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	),
	(
		SELECT TOP 1
			[l_1].[ParentID] + 1
		FROM
			[Child] [l_1]
	),
	(
		SELECT TOP 1
			[l_2].[ParentID]
		FROM
			[Child] [l_2]
	)
FROM
	[Parent] [sep]

