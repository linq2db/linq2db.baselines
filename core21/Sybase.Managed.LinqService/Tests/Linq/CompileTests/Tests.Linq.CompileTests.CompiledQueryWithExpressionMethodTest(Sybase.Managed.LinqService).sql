BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 1

SELECT TOP 1 
	[x].[ParentID], 
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @ParentID_1
ORDER BY
	[x].[ParentID] DESC

