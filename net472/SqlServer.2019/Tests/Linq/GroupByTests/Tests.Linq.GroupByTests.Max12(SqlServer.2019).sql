BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Max(IIF([c_1].[ChildID] > 20, 1, 0))
FROM
	[Child] [c_1]

