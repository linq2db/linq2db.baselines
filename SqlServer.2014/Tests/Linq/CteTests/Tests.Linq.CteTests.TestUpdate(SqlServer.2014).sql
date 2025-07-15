BeforeExecute
-- SqlServer.2014

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[CteChild] [c_1]
	WHERE
		[c_1].[ParentID] % 2 = 0
)
UPDATE
	[c_2]
SET
	[c_2].[ParentID] = [c_2].[ChildID]
FROM
	[CteChild] [c_2]
		INNER JOIN [CTE_1] [ct] ON [ct].[ParentID] = [c_2].[ParentID]

BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[ChildID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

