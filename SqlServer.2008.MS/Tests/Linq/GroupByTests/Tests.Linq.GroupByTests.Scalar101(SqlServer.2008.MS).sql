BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	MAX([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

