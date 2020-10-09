BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

