BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

