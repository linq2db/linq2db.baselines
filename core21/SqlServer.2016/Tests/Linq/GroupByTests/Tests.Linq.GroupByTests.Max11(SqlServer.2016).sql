BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	Max(IIF([c_1].[ChildID] > 20, 1, 0))
FROM
	[Child] [c_1]

