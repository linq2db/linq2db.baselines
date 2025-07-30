BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[c_1].[ParentID] + 1000,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

