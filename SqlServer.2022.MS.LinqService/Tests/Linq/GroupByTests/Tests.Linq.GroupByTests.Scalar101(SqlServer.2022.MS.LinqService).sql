BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

