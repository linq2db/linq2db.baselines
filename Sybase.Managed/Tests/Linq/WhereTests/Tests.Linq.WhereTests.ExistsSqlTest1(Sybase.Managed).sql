BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + 100 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

