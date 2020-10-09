BeforeExecute
-- SqlServer.2005

SELECT 
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

