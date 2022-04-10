BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

