BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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

