BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CteChild]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[CteChild]', N'U') IS NULL)
	CREATE TABLE [CteChild]
	(
		[ChildID]  Int NOT NULL,
		[ParentID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [CteChild]
(
	[ChildID],
	[ParentID]
)
VALUES
(1000,0),
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5),
(1006,6),
(1007,7),
(1008,8),
(1009,9)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

WITH [CTE_1] ([ParentID], [ChildID])
AS
(
	SELECT
		[c_1].[ParentID],
		[c_1].[ChildID]
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CteChild]

