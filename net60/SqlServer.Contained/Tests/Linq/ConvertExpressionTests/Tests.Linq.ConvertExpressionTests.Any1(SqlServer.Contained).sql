BeforeExecute
-- SqlServer.Contained SqlServer.2019

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

