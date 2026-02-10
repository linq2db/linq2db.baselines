-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1

SELECT DISTINCT
	[g_1].[ParentID] as [Key_1]
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

-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 2

SELECT DISTINCT
	[g_1].[ParentID] as [Key_1]
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

