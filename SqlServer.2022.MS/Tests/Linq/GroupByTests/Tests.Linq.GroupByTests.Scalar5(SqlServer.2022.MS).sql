BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

