BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	MAX([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

