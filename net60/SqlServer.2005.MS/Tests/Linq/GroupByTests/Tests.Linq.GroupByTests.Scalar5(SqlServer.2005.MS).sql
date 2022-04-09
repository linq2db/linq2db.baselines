BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

