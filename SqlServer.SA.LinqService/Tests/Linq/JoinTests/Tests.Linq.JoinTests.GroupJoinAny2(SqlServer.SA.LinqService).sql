BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1_1]
		WHERE
			[t1].[ParentID] = [t1_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [t1]

