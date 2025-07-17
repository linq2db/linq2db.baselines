BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [t1]

