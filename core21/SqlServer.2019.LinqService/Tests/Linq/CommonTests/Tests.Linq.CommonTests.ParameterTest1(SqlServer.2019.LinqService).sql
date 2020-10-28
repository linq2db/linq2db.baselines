BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p].[ParentID]
FROM
	[Child] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [p].[ParentID]
	)
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Child] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [p].[ParentID]
	)
GROUP BY
	[p].[ParentID]

