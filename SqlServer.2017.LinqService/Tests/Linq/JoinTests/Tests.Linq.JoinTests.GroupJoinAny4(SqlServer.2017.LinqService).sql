BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[p].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [p]

