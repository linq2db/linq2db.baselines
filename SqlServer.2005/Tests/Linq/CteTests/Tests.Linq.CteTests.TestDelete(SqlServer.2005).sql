BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CteChild]', N'U') IS NOT NULL)
	DROP TABLE [CteChild]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CteChild]', N'U') IS NULL)
	CREATE TABLE [CteChild]
	(
		[ChildID]  Int NOT NULL,
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [CteChild]
(
	[ChildID],
	[ParentID]
)
SELECT 1000,0 UNION ALL
SELECT 1001,1 UNION ALL
SELECT 1002,2 UNION ALL
SELECT 1003,3 UNION ALL
SELECT 1004,4 UNION ALL
SELECT 1005,5 UNION ALL
SELECT 1006,6 UNION ALL
SELECT 1007,7 UNION ALL
SELECT 1008,8 UNION ALL
SELECT 1009,9

BeforeExecute
-- SqlServer.2005

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
DELETE [c_2]
FROM
	[CteChild] [c_2]
		INNER JOIN [CTE_1] [ct] ON [ct].[ParentID] = [c_2].[ParentID]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CteChild]', N'U') IS NOT NULL)
	DROP TABLE [CteChild]

