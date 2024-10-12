BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

