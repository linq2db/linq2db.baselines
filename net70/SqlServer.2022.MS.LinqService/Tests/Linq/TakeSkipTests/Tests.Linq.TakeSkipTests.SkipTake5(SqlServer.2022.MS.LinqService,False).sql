BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	1
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

