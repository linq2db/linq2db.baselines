BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [t]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t].[ParentID] = [c_1].[ParentID]
	) > 0

