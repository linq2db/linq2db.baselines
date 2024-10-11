BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	MAX([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

