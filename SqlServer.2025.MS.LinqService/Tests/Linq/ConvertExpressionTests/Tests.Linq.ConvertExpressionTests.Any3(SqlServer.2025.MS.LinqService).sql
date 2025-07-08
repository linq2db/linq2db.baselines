BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Child] [c_1]
				WHERE
					[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
			)
	), 1, 0)

