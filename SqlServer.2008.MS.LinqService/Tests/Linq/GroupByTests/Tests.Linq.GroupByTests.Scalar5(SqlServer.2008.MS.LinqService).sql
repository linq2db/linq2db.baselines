BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	MAX([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

