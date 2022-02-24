BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

