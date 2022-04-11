BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

