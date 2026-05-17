-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 1

SELECT DISTINCT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [g_1].[ParentID]
	)

-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 2

SELECT DISTINCT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [g_1].[ParentID]
	)

