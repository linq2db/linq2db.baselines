BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

