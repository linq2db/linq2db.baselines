BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

