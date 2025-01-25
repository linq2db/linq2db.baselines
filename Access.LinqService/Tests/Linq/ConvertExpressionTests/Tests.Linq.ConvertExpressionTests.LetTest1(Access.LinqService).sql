BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	(
		SELECT TOP 1
			[a_Children_1].[ParentID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
	) IS NOT NULL

