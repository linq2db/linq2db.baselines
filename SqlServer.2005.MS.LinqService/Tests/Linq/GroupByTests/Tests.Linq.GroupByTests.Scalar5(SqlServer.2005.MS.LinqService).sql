BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

