BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	IIF([p].[Value1] IS NULL, (
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	), (
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	))
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

