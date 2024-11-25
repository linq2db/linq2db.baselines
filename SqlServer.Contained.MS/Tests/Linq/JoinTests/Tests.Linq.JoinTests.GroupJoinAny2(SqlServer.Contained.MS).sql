BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1_1]
		WHERE
			[t1].[ParentID] = [t1_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [t1]

