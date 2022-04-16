BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

