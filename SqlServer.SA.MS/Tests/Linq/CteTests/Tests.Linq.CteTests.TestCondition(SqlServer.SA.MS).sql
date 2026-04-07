-- SqlServer.SA.MS SqlServer.2019
DECLARE @var3 Int -- Int32
SET     @var3 = 1

WITH [CTE_1] ([ChildID], [ParentID])
AS
(
	SELECT
		[t1].[ChildID],
		[t1].[ParentID]
	FROM
		[Child] [t1]
)
SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	(
		SELECT
			[t2].[ChildID],
			[t2].[ParentID]
		FROM
			[CTE_1] [t2]
	) [t]
WHERE
	[t].[ChildID] = @var3

