BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[Parent]
SET
	[c_1].[Value1] = NULL
FROM
	[Parent] [x]
		INNER JOIN [Parent] [c_1] ON [x].[ParentID] = [c_1].[Value1]
WHERE
	[x].[ParentID] IN (0, 0)

