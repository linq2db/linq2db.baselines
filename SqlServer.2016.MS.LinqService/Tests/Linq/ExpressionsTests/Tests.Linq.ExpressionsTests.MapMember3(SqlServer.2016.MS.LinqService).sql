BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > @n
	) + 2
FROM
	[Parent] [p]

